
import Apollo

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo: ApolloClient = {

        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        
        let client = URLSessionClient()
        let provider = NetworkInterceptorProvider(store: store, client: client)
        let url = URL(string: AppConfiguration.shared.hostName)!
        
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                                 endpointURL: url)
        
        return ApolloClient(networkTransport: requestChainTransport,
                            store: store)
    }()
    
    func mutation<T: GraphQLMutation, Model: Codable>(model type: Model.Type,
                                                      _ mutation: T,
                                                      successHandler: @escaping ((_ model :Model) -> Void) ,
                                                      failureHandler: @escaping ((_ error: Error) -> Void)) {
        
        apollo.perform(mutation: mutation) { (result) in
            
            switch result {
            case .success(let queryResult):
                do {
                    let data = try JSONSerialization.data(withJSONObject: queryResult.data!.jsonObject, options: .fragmentsAllowed)
                    let model = try JSONDecoder().decode(Model.self, from: data)
                    successHandler(model)
                } catch {
                    debugPrint("Failure! Error: \(error)")
                    failureHandler(error)
                }
            case .failure(let error):
                debugPrint("Failure! Error: \(error)")
                failureHandler(error)
            }
        }
    }
}

///Managments
extension Network {
    class ResponseLoggingInterceptor: ApolloInterceptor {
        
        enum ResponseLoggingError: Error {
            case notYetReceived
        }
        
        func interceptAsync<Operation: GraphQLOperation>(
            chain: RequestChain,
            request: HTTPRequest<Operation>,
            response: HTTPResponse<Operation>?,
            completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            
            defer {
                // Even if we can't log, we still want to keep going.
                chain.proceedAsync(request: request,
                                   response: response,
                                   completion: completion)
            }
            
            guard let receivedResponse = response else {
                chain.handleErrorAsync(ResponseLoggingError.notYetReceived,
                                       request: request,
                                       response: response,
                                       completion: completion)
                return
            }
            
//            debugPrint("HTTP Response: \(receivedResponse.httpResponse)")
//
//            if let stringData = String(bytes: receivedResponse.rawData, encoding: .utf8) {
//                debugPrint("Data: \(stringData)")
//            } else {
//                debugPrint("Could not convert data to string!")
//            }
            
            
            #if DEBUG
            debugPrint("==========================================================")
            printRequest(request: try? request.toURLRequest(),
                         data: receivedResponse.rawData,
                         params: request.operation.variables?.jsonObject)
            
            debugPrint("STATUS CODE:", receivedResponse.httpResponse.statusCode)
            debugPrint("==========================================================")
            #endif
        }
        
        func printRequest(request: URLRequest?, data: Data?, params: [String: Any]?) {
        
            debugPrint("SEND TO SERVER:", request?.httpMethod ?? "", request?.url?.absoluteString ?? "<url is nil>")
            debugPrint("HEADERS:", request?.allHTTPHeaderFields ?? "<headers is empty>")
            debugPrint("BODY:", params ?? "<body is empty>")
            if let data = data,
               let json = try? JSONSerialization.jsonObject(with: data, options : .allowFragments) {
                debugPrint("DATA:", json )
            } else if let data = data {
                let str = String(decoding: data, as: UTF8.self)
                debugPrint("DATA:", str )
            } else {
                debugPrint("DATA:", "<data is empty>" )
            }
        }
    }

    class RequestLoggingInterceptor: ApolloInterceptor {
        
        func interceptAsync<Operation: GraphQLOperation>(
            chain: RequestChain,
            request: HTTPRequest<Operation>,
            response: HTTPResponse<Operation>?,
            completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            
            #if DEBUG
            debugPrint("==========================================================")
            printRequest(request: try? request.toURLRequest(),
                         params: request.operation.variables?.jsonObject)
            debugPrint("==========================================================")
            #endif
            
            chain.proceedAsync(request: request,
                               response: response,
                               completion: completion)
        }
        
        func printRequest(request: URLRequest?, params: [String: Any]?) {
        
            debugPrint("TRY SEND TO SERVER:", request?.httpMethod ?? "", request?.url?.absoluteString ?? "<url is nil>")
            debugPrint("HEADERS:", request?.allHTTPHeaderFields ?? "<headers is empty>")
            debugPrint("BODY:", params ?? "<body is empty>")
        }
    }

    class UserManagementInterceptor: ApolloInterceptor {
        
        enum UserError: Error {
            case noUserLoggedIn
        }
        
        /// Helper function to add the token then move on to the next step
        private func addTokenAndProceed<Operation: GraphQLOperation>(
            _ token: Token,
            to request: HTTPRequest<Operation>,
            chain: RequestChain,
            response: HTTPResponse<Operation>?,
            completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            
            request.addHeader(name: "Authorization", value: "Bearer \(token.token)")
            chain.proceedAsync(request: request,
                               response: response,
                               completion: completion)
        }
        
        func interceptAsync<Operation: GraphQLOperation>(
            chain: RequestChain,
            request: HTTPRequest<Operation>,
            response: HTTPResponse<Operation>?,
            completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            
            guard let token = UserManager.shared.token else {
                // In this instance, no user is logged in, so we want to call
                // the error handler, then return to prevent further work
                chain.handleErrorAsync(UserError.noUserLoggedIn,
                                       request: request,
                                       response: response,
                                       completion: completion)
                return
            }
            
            // If we've gotten here, there is a token!
            if token.isExpired {
                // Call an async method to renew the token
//                UserManager.shared.renewToken { [weak self] tokenRenewResult in
//                    guard let self = self else {
//                        return
//                    }
//
//                    switch tokenRenewResult {
//                    case .failure(let error):
//                        // Pass the token renewal error up the chain, and do
//                        // not proceed further. Note that you could also wrap this in a
//                        // `UserError` if you want.
//                        chain.handleErrorAsync(error,
//                                               request: request,
//                                               response: response,
//                                               completion: completion)
//                    case .success(let token):
//                        // Renewing worked! Add the token and move on
//                        self.addTokenAndProceed(token,
//                                                to: request,
//                                                chain: chain,
//                                                response: response,
//                                                completion: completion)
//                    }
//                }
            } else {
                // We don't need to wait for renewal, add token and move on
                self.addTokenAndProceed(token,
                                        to: request,
                                        chain: chain,
                                        response: response,
                                        completion: completion)
            }
        }
    }

    struct NetworkInterceptorProvider: InterceptorProvider {
        
        // These properties will remain the same throughout the life of the `InterceptorProvider`, even though they
        // will be handed to different interceptors.
        private let store: ApolloStore
        private let client: URLSessionClient
        
        init(store: ApolloStore,
             client: URLSessionClient) {
            self.store = store
            self.client = client
        }
        
        func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
            return [
                MaxRetryInterceptor(),
                CacheReadInterceptor(store: self.store),
                UserManagementInterceptor(),
                RequestLoggingInterceptor(),
                NetworkFetchInterceptor(client: self.client),
                ResponseLoggingInterceptor(),
                ResponseCodeInterceptor(),
                JSONResponseParsingInterceptor(cacheKeyForObject: self.store.cacheKeyForObject),
                AutomaticPersistedQueryInterceptor(),
                CacheWriteInterceptor(store: self.store)
            ]
        }
    }
}


/// Temp class
extension Network {
    class UserManager {
        
        var token: Token? = Token()
        
        static let shared: UserManager = {
            let sharedInstance = UserManager()
            return sharedInstance
        }()
    }
    
    struct Token {
        var isExpired: Bool = false
        var token: String?
    }
}
