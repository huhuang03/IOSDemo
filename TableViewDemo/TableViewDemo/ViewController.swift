//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Tonghu_Yi on 11/1/15.
//  Copyright © 2015 Tonghu_Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var data:[String]!

    @IBOutlet weak var tableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [String]()
        for i in 1...100{
            data.append("Item \(i)")
        }
        
        tableVIew.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("reuse")
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "reuse")
        }
        cell!.textLabel?.text = data[indexPath.row]
        return cell!
    }


}

