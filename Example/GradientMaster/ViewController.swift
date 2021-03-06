//
//  ViewController.swift
//  GradientMaster
//
//  Created by catchzeng on 10/31/2018.
//  Copyright (c) 2018 catchzeng. All rights reserved.
//

import UIKit
import GradientMaster

class ViewController: UIViewController {
    
    @IBOutlet weak var gradientView: GradientMasterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientView.animationDuration = 5.0
        gradientView.startAnimation()
        
        self.perform(#selector(stop), with: nil, afterDelay: 5.0)
    }
    
    @objc private func stop() {
        gradientView.stopAnimation()
    }
}
