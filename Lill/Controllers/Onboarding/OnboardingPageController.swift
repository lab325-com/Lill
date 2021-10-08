
import UIKit

class OnboardingPageController: UIPageViewController {
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    private var items: [UIViewController] = []
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        
        items.append(contentsOf: [OnboardingFirsController(delegate: self),
                                  OnboardingSecondController(delegate: self),
                                  OnboardingThreeController(delegate: self)])
    
        dataSource = self
        
        if let firstViewController = items.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
}

//----------------------------------------------
// MARK: - DataSource
//----------------------------------------------

extension OnboardingPageController: UIPageViewControllerDataSource {
    func pageViewController(_: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = items.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard items.count > previousIndex else {
            return nil
        }
        
        return items[previousIndex]
    }
    
    func pageViewController(_: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = items.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        guard items.count != nextIndex else {
            return nil
        }
        
        guard items.count > nextIndex else {
            return nil
        }
        
        return items[nextIndex]
    }
}

//----------------------------------------------
// MARK: - Delegate
//----------------------------------------------

extension OnboardingPageController: OnboardingFirstDelegate {
    func onboardingFirstNext(controller: OnboardingFirsController) {
        goToNextPage()
    }
}


extension OnboardingPageController: OnboardingSecondDelegate {
    func onboardingSecondNext(controller: OnboardingSecondController) {
        goToNextPage()
    }
}

extension OnboardingPageController: OnboardingThreeDelegate {
    func onboardingThreePrevious(controller: OnboardingThreeController) {
        //goToPreviousPage()
        RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window)
    }
}
