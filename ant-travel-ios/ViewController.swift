//
//  ViewController.swift
//  ant-travel-ios
//
//  Created by 肖恒 on 15/12/23.
//  Copyright © 2015年 xiaoheng. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置图片
        let url = NSURL(string: "http://e.hiphotos.baidu.com/zhidao/pic/item/8c1001e93901213f348294cb56e736d12f2e9570.jpg")
        imageView.sd_setImageWithURL(url)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

