//
//  ResetVCExtension.swift
//  CustomTabBar
//
//  Created by Brendon Cecilio on 10/22/20.
//

import UIKit

extension UIViewController {
    
    /// Changes the root view controller to the one passed in as a parameter.
    static func resetWindow(_ vc: UIViewController){
        guard let scene = UIApplication.shared.connectedScenes.first, let sceneDelegate = scene.delegate as? SceneDelegate, let window = sceneDelegate.window else {
            fatalError("Could not reset scene.window's rootViewController")
//            return
        }
        window.rootViewController = vc
    }
}
