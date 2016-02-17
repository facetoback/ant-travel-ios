//
//  MainViewController.swift
//  AntTravel
//
//  Created by 肖恒 on 16/1/28.
//  Copyright © 2015年 facetoback. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1.添加子控制器
        addChildViewController("HomeTableViewController", imageName: "tabbar_home", title: "出发")
        addChildViewController("DiscoverTableViewController", imageName: "tabbar_discover", title: "发现")
        addChildViewController("MessageTableViewController", imageName: "tabbar_message_center", title: "消息")
        addChildViewController("MeTableViewController", imageName: "tabbar_profile", title: "我的")
    }

    func addChildViewController(childControllerName: String, imageName: String, title: String) {
        
        // 0.获取命名空间
        guard let nsp =  NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as? String else
        {
            DLog("没有获取到命名空间")
            return
        }
        
        // 1.通过一个字符串创建一个类
        let cls: AnyClass? = NSClassFromString(nsp + "." + childControllerName)
        
        // 2.通过一个Class创建一个对象
        guard let vcCls = cls as? UITableViewController.Type else
        {
            DLog("AnyClass没有值")
            return
        }

        // 3.设置其它属性
        // 1.1创建子控制器
        let childController = vcCls.init()
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        childController.title = title
        
        // 1.2包装一个导航控制器
        let nav = UINavigationController(rootViewController: childController)
        
        // 1.3将导航控制器添加到UITabBarController
        addChildViewController(nav)
    }
    
}
