//
//  HomeTableHeaderView.swift
//  AntTravel
//
//  Created by 肖恒 on 16/2/19.
//  Copyright © 2016年 facetoback. All rights reserved.
//

import UIKit

class HomeTableHeaderView: UIView {
    
    @IBOutlet weak var findDriver: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    /**
    快速创建方法
    */
    class func headerView() -> HomeTableHeaderView
    {
        let header = NSBundle.mainBundle().loadNibNamed("HomeTableHeaderView", owner: nil, options: nil).last as! HomeTableHeaderView
        header.scrollView.contentSize = CGSizeMake(SCREENWIDTH * 2, 100)
        header.scrollView.showsHorizontalScrollIndicator = true
        header.scrollView.pagingEnabled = true
        return header
    }
    
}
