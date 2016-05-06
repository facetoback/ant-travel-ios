//
//  AppDelegate.swift
//  AntTravel
//
//  Created by 肖恒 on 16/1/28.
//  Copyright © 2015年 facetoback. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        UITabBar.appearance().tintColor = UIColor.orangeColor()
        UINavigationBar.appearance().tintColor = UIColor.orangeColor()
        
        // 1.创建window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        // 2.设置根控制器
        window?.rootViewController = MainViewController()
        // 3.显示window
        window?.makeKeyAndVisible()
        
        return true
    }
}


func DLog<T>(message: T, method: String = #function, line: Int = #line)
{
    #if DEBUG
        print("\(method)[\(line)]: \(message)")
    #endif
}

