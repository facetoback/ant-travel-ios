//
//  MainViewController.swift
//  ant-travel-ios
//
//  Created by 肖恒 on 16/1/24.
//  Copyright © 2016年 facetoback. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // 1.添加子控制器
        /*
        // 1.1创建子控制器
        let homeVC = HomeTableViewController()
        homeVC.tabBarItem.image = UIImage(named: "tabbar_home")
        homeVC.tabBarItem.selectedImage = UIImage(named: "tabbar_home_highlighted")
        homeVC.tabBarItem.title = "首页"
        
        // 1.2包装一个导航控制器
        let nav = UINavigationController(rootViewController: homeVC)
        
        // 1.3将导航控制器添加到UITabBarController
        addChildViewController(nav)
        // 注意点: 在iOS7以前, 如果设置UITabBar的tintColor只有文字有效, 而图片无效
        //        homeVC.tabBarController?.tabBar.tintColor = UIColor.orangeColor()
        */
        addChildViewController(HomeTableViewController(), imageName: "tabbar_home", title: "首页")
//        addChildViewController(MessageTableViewController(), imageName: "tabbar_message_center", title: "消息")
//        addChildViewController(DiscoverTableViewController(), imageName: "tabbar_discover", title: "广场")
//        addChildViewController(ProfileTableViewController(), imageName: "tabbar_profile", title: "我")
    }
    
    func addChildViewController(childController: UIViewController, imageName: String, title: String) {
        
        // 1.1创建子控制器
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        //        childController.tabBarItem.title = title
        //        childController.navigationItem.title = title
        childController.title = title
        
        // 1.2包装一个导航控制器
        let nav = UINavigationController(rootViewController: childController)
        
        // 1.3将导航控制器添加到UITabBarController
        addChildViewController(nav)
        
    }
    
}
