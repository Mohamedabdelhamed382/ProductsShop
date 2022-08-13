//
//  TabBarViewController.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 04/08/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .brown
        let vc1 = UINavigationController(rootViewController: HomeScreenViewController())
        let vc2 = UINavigationController(rootViewController: UIViewController())
        let vc3 = UINavigationController(rootViewController: UIViewController())
        let vc4 = UINavigationController(rootViewController: UIViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "book")
        vc3.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        vc4.tabBarItem.image = UIImage(systemName: "cart")
        
        vc1.title = "Home"
        vc2.title = "Offers"
        vc3.title = "Profile"
        vc4.title = "Cart"
        
        tabBar.tintColor = .label
        
        tabBar.layer.masksToBounds = true
        tabBar.isTranslucent = true
        tabBar.backgroundColor = .white
        tabBar.layer.cornerRadius = 20
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }

}
