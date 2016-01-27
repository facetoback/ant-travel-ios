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
        
        addChildViewController(HomeTableViewController(), imageName: "tabbar_home", title: "首页")
        addChildViewController(MessageTableViewController(), imageName: "tabbar_message_center", title: "消息")
        addChildViewController(DiscoverTableViewController(), imageName: "tabbar_discover", title: "广场")
        addChildViewController(MeTableViewController(), imageName: "tabbar_profile", title: "我")
    }
    
    func addChildViewController(childController: UIViewController, imageName: String, title: String) {
        
        // 1.1创建子控制器
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        childController.title = title
        
        // 1.2包装一个导航控制器
        let nav = UINavigationController(rootViewController: childController)
        
        // 1.3将导航控制器添加到UITabBarController
        addChildViewController(nav)
        
    }
    
}
