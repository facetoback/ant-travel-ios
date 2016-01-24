//
//  ViewController.swift
//  ant-travel-ios
//
//  Created by 肖恒 on 15/12/23.
//  Copyright © 2015年 facetoback. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "蚂蚁旅行";
        self.view.backgroundColor = UIColor.redColor()
        loadData()
    }
    
    func  loadData() -> AnyObject{
        print(123)
        return NSObject();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

