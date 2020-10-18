//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Brendon Cecilio on 10/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
    }
    
    func setUpButton() {
//        button.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.setImage(UIImage(named:"thumbsUp.png"), for: .normal)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        guard let menuVC = storyboard?.instantiateViewController(identifier: "MenuController") else {
            fatalError("could not insantiate menuVC")
        }
        present(menuVC, animated: true)
    }
}

