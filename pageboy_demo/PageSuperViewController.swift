//
//  PageSuperViewController.swift
//  pageboy_demo
//
//  Created by Alexander Murphy on 7/2/17.
//  Copyright © 2017 Alexander Murphy. All rights reserved.
//

import Foundation
import UIKit

class PageSuperViewController: UIViewController {
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("pressed next".uppercased(), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func nextButtonPressed() {
        print("pressed next")
        self.parentPageboyViewController?.scrollToPage(.next, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-12-[next]-12-|", options: [], metrics: nil, views: ["next":self.nextButton]))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:[next(50)]-12-|", options: [], metrics: nil, views: ["next":self.nextButton]))
    }
}
