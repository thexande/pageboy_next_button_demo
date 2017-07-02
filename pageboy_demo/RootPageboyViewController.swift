//
//  ViewController.swift
//  pageboy_demo
//
//  Created by Alexander Murphy on 7/2/17.
//  Copyright © 2017 Alexander Murphy. All rights reserved.
//

import UIKit
import Pageboy

class RootPageboyViewController: PageboyViewController {
    let view_controllers = [PageOneViewController(), PageTwoViewController(), PageThreeViewController()]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
    }
}

extension RootPageboyViewController: PageboyViewControllerDataSource, PageboyViewControllerDelegate {
    
    func pageboyViewController(_ pageboyViewController: PageboyViewController, willScrollToPageAtIndex index: Int, direction: PageboyViewController.NavigationDirection, animated: Bool) {
    }
    
    func pageboyViewController(_ pageboyViewController: PageboyViewController, didScrollToPosition position: CGPoint, direction: PageboyViewController.NavigationDirection, animated: Bool) {
    }
    
    func pageboyViewController(_ pageboyViewController: PageboyViewController, didScrollToPageAtIndex index: Int, direction: PageboyViewController.NavigationDirection, animated: Bool) {
    }
    
    func pageboyViewController(_ pageboyViewController: PageboyViewController, didReload viewControllers: [UIViewController], currentIndex: PageboyViewController.PageIndex) {
        return
    }
    
    func defaultPageIndex(forPageboyViewController pageboyViewController: PageboyViewController) -> PageboyViewController.PageIndex? {
        return nil
    }
    
    func viewControllers(forPageboyViewController pageboyViewController: PageboyViewController) -> [UIViewController]? {
        return view_controllers
    }
}

