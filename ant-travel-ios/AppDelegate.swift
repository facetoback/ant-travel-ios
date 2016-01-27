//
//  AppDelegate.swift
//  ant-travel-ios
//
//  Created by 肖恒 on 15/12/23.
//  Copyright © 2015年 facetoback. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //leanCloud配置
//        AVOSCloud.setApplicationId(leanCloudAppId, clientKey: leanCloudAppKey)
        //leanCloud跟踪统计应用的打开情况
//        AVAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        UITabBar.appearance().tintColor = UIColor.orangeColor()
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


func DebugLog<T>(message: T, method: String = __FUNCTION__, line: Int = __LINE__)
{
    #if DEBUG
        print("\(method)[\(line)]: \(message)")
    #endif
}

