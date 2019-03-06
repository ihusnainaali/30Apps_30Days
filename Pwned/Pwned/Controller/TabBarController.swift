//
//  TabBarController.swift
//  Pwned
//
//  Created by Vlad Munteanu on 3/5/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
       
        let attackVC = AttackVC()
        attackVC.tabBarItem.title = ""
        attackVC.tabBarItem.image = UIImage(named: "wifi")
        
       let scanVC = ScanWKVC()
        scanVC.tabBarItem.title = ""
        scanVC.tabBarItem.image = UIImage(named: "scan")
        
        
        let viewControllerList = [attackVC, scanVC]
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }
    
    
}
