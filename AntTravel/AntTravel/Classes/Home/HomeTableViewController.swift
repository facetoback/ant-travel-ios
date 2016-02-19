//
//  HomeTableViewController.swift
//  AntTravel
//
//  Created by 肖恒 on 16/1/28.
//  Copyright © 2015年 facetoback. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    private let cellId = "cell"
    
    private lazy var headerView : UIView = {
        let header = HomeTableHeaderView.headerView()
        header.frame = CGRect(x: 0, y: 0, width: SCREENWIDTH, height: 200)
        header.findDriver.addTarget(self, action: "rightClick", forControlEvents: UIControlEvents.TouchUpInside)
        return header
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = headerView;
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "北京", style: UIBarButtonItemStyle.Plain, target: self, action: "leftClick")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "发布", style: UIBarButtonItemStyle.Plain, target: self, action: "rightClick")
        
        tableView.registerClass(HomeTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    @objc private func leftClick() {
        DLog("leftClick")
    }
    
    @objc private func rightClick() {
        DLog("rightClick")
    }
    
    // 监听scrollView滚动
    //    override func scrollViewDidScroll(scrollView: UIScrollView) {
    //        // 获取y轴偏移量
    //        let offsetY = scrollView.contentOffset.y
    //        var frame = headerView.frame
    //        frame.origin.y = offsetY
    //        //        headerView.frame = frame
    //        //        DLog("\(offsetY)")
    //    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        view.backgroundColor = UIColor.yellowColor();
        return view;
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45;
    }
    
    // MARK: - Table view data source
    
    //    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 1
    //    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row+1)"
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
