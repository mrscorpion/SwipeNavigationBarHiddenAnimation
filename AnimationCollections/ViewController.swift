//
//  ViewController.swift
//  AnimationCollections
//
//  Created by mr.scorpion on 16/8/2.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: - Types
    struct Constants {
        struct Images {
            static let one = "one"
            static let two = "two"
            static let three = "three"
            static let four = "four"
            static let five = "five"
            static let six = "six"
        }
    }
    // MARK: - Properties
    var entries = [
        Entry(title: "First Entry", image: UIImage(named: "one")!),
        Entry(title: "Exploring", image: UIImage(named: "two")!),
        Entry(title: "Traveling Abroad", image: UIImage(named: "three")!),
        Entry(title: "Scuba Diving", image: UIImage(named: "four")!),
        Entry(title: "Trip Together", image: UIImage(named: "five")!),
        Entry(title: "The Unknown", image: UIImage(named: "six")!)
    ]
    
//    // 定义全局对象变量
//    var cusRefreshControl: ZJRefreshControl!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adds animation to navigation controller to hide bar on swipe.
        configureNavigationController()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
//        // 初始化
//        //只有下拉刷新
//        cusRefreshControl = ZJRefreshControl(scrollView: self.tableView, refreshBlock: {
//            self.dropViewDidBeginRefreshing()
//        })
//        //下拉刷新和上拉加载更多
//        cusRefreshControl = ZJRefreshControl(scrollView: self.tableView,refreshBlock: {
//            self.dropViewDidBeginRefreshing();
//            },loadmoreBlock: {
//                self.dropViewDidBeginLoadmore();
//        });
    }

    func configureNavigationController() {
        // 向上swipe，隐藏navigationController
        navigationController?.hidesBarsOnSwipe = true
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! EntryCell
        let entry = entries[indexPath.row]
        cell.entryTitle.text = entry.title
        cell.entryImage.image = entry.image
        return cell
    }
    
    
//    // MARK: - Refresh
//    //下拉刷新调用的方法
//    func dropViewDidBeginRefreshing()->Void{
//        print("-----刷新数据-----");
//        self.delay(1.5, closure: {
//            //结束下拉刷新必须调用
//            self.cusRefreshControl.endRefreshing();
//        });
//    }
//    //上拉加载更多调用的方法
//    func dropViewDidBeginLoadmore()->Void{
//        print("-----加载数据-----");
//        self.delay(1.5, closure: {
//            //结束加载更多必须调用
//            self.cusRefreshControl.endLoadingmore();
//        });
//    }
//    //延迟执行方法
//    func delay(delay:Double, closure:()->()) {
//        dispatch_after(
//            dispatch_time(
//                DISPATCH_TIME_NOW,
//                Int64(delay * Double(NSEC_PER_SEC))
//            ),
//            dispatch_get_main_queue(), closure)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

