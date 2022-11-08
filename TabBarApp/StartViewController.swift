//
//  ViewController.swift
//  TabBarApp
//
//  Created by Elena Mikhailova on 08.11.2022.
//

import UIKit

class StartViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        for viewController in viewControllers {
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemMint
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemYellow
            } else if let navigationVC = viewController as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else { return }
                thirdVC.title = "Third Screen"
                thirdVC.view.backgroundColor = .systemRed
            }
        }

    }

}

