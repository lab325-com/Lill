//
//  UIPageViewController.swift
//  Lill
//
//  Created by Andrey S on 24.09.2021.
//

import UIKit

extension UIPageViewController {
    func goToNextPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
        DispatchQueue.main.async {
            if let currentViewController = self.viewControllers?.first {
                if let nextPage = self.dataSource?.pageViewController(self, viewControllerAfter: currentViewController) {
                    self.setViewControllers([nextPage], direction: .forward, animated: animated, completion: completion)
                }
            }
        }
    }
    
    func goToPreviousPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
        DispatchQueue.main.async {
            if let currentViewController = self.viewControllers?.first {
                if let nextPage = self.dataSource?.pageViewController(self, viewControllerBefore: currentViewController) {
                    self.setViewControllers([nextPage], direction: .reverse, animated: animated, completion: completion)
                }
            }
        }
    }
    
    var isPagingEnabled: Bool {
           get {
               var isEnabled: Bool = true
               for view in view.subviews {
                   if let subView = view as? UIScrollView {
                       isEnabled = subView.isScrollEnabled
                   }
               }
               return isEnabled
           }
           set {
               for view in view.subviews {
                   if let subView = view as? UIScrollView {
                       subView.isScrollEnabled = newValue
                   }
               }
           }
       }
}
