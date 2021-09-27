
import Foundation

class OnboardingRouter: BaseRouter {
    
    func pushOnboarding() {
        let controller = OnboardingPageController()
        push(controller: controller)
    }
}
