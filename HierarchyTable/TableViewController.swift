//
//  TableViewController.swift
//  HierarchyTable
//
//  Created by kongyunpeng on 2/25/16.
//  Copyright © 2016 kongyunpeng. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let levels = ["easy","good","hard","fail"]
    lazy var dic = Dictionary<String,[String]>()
    override func viewDidLoad() {
        super.viewDidLoad()
        dic = ["ObjectiveC":levels,"Java":levels,"Python":levels]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return dic.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return levels.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = levels[indexPath.row]

        return cell
    }
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton(type: .Custom)
        button.frame = CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 44)
        let titles = Array(dic.keys)
        let title = titles[section]
        button.setTitle(title, forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        return button
    }

}
