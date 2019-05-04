//
//  ViewController.swift
//  MengoPudding
//
//  Created by Meng Lim on 26/4/19.
//  Copyright © 2019 Meng Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label: UILabel = {
        let s = UILabel()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.setContentHuggingPriority(.required, for: .horizontal)
        s.setContentCompressionResistancePriority(.required, for: .horizontal)
        return s
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "MENG LIM"
        label.textAlignment = .center
        self.view.addSubview(label)
                self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|->=0-[label]->=0-|", options: [], metrics: nil, views: ["label": label]))
        self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|->=0-[label]->=0-|", options: [], metrics: nil, views: ["label": label]))
        // Do any additional setup after loading the view.
        print("hello world")
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
    }
}
