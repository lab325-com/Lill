
#import "AppConfigurationBridge.h"

@interface AppConfigurationBridge()

@property(nonnull, copy) NSString *configurationDescription;
@property(nonnull, copy) NSString *hostName;
@property(nonnull, copy) NSString *supportEmail;
@property(nonnull, copy) NSString *appName;

@end

@implementation AppConfigurationBridge

- (instancetype) init {
    self = [super init];
    if (self) {
        
    #ifdef CONFIGURATION_NAME
        [self setConfigurationDescription: CONFIGURATION_NAME];
    #else
        #error Cant find CONFIGURATION_NAME. Please setup xcconfig file
    #endif

    #ifdef HOST_NAME
        [self setHostName: HOST_NAME];
    #else
        #error Cant find HOST_NAME. Please setup xcconfig file
    #endif
        
    #ifdef SUPPORT_EMAIL
        [self setSupportEmail: SUPPORT_EMAIL];
    #else
         #error Cant find SUPPORT_EMAIL. Please setup xcconfig file
    #endif
        
    #ifdef APP_NAME
        [self setAppName: APP_NAME];
    #else
        #error Cant find APP_NAME. Please setup xcconfig file
    #endif
    }
    return self;
}

@end
