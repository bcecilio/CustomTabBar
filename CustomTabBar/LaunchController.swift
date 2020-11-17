//
//  LaunchController.swift
//  CustomTabBar
//
//  Created by Brendon Cecilio on 10/22/20.
//

import UIKit
import Lottie

class LaunchController: UIViewController {

    @IBOutlet var animationView2: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animate()
    }

    private func animate() {
        animationView2 = .init(name: "launchScreen")
        animationView2.frame = view.bounds
        animationView2.animationSpeed = 1
        animationView2.loopMode = .playOnce
        view.addSubview(animationView2)
        animationView2.play()
        guard let mainVC = storyboard?.instantiateViewController(identifier: "CustomTabBarController") else {
            fatalError("could not instantiate VC")
        }
        UIViewController.resetWindow(mainVC)
    }
}
