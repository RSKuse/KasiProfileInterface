//
//  TabBarController.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/11.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupTabBar()
        setupViewControllers()
    }
    
    func setupTabBar() {
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.white
    }
    
    func setupViewControllers() {
        

        let homeTabBarItem = UITabBarItem(title: "",
                                          image: UIImage(named: "icon_home"),
                                          selectedImage: UIImage(named: "icon_home_selected"))
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        homeViewController.tabBarItem = homeTabBarItem
        
      
        let searchTabBarItem = UITabBarItem(title: "",
                                            image: UIImage(named: "icon_Search"),
                                              selectedImage: UIImage(named: "icon_selected_search"))
        let searchController = UINavigationController(rootViewController: SearchViewController())
        searchController.tabBarItem = searchTabBarItem
        
        let addTabBarItem = UITabBarItem(title: "",
                                              image: UIImage(named: "icon_messages"),
                                              selectedImage: UIImage(named: "icon_messages_selected"))
        let addController = UINavigationController(rootViewController: AddViewController())
        addController.tabBarItem = addTabBarItem
        
        
        let notificationTabBarItem = UITabBarItem(title: "",
                                              image: UIImage(named: "icon_notification"),
                                              selectedImage: UIImage(named: "icon_notification_selected"))
        let notificationController = UINavigationController(rootViewController: NotificationsViewController())
        notificationController.tabBarItem = notificationTabBarItem
       
        let profileTabBarItem = UITabBarItem(title: "",
                                              image: UIImage(named: "icon_home"),
                                              selectedImage: UIImage(named: "icon_notification_selected"))
        let profileController = UINavigationController(rootViewController: ProfileViewController())
        profileController.tabBarItem = profileTabBarItem
        
        
        self.viewControllers = [homeViewController, searchController, addController, notificationController, profileController]
        
    }
}
