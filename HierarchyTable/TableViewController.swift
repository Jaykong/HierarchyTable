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
        switch section {
        case 0:
            if bools.0 == true {
               return 0
            } else {
               return levels.count
            }
        case 1:
            if bools.1 == true {
                return 0
            } else {
               return levels.count
            }
        case 2:
            if bools.2 == true {
                return 0
            } else {
              return levels.count
            }
        default:
            break
        }
        
      return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = levels[indexPath.row]

        return cell
    }
    var bools = (false,false,false)
    func headBtnClicked(btn:UIButton) {
       
        switch btn.tag {
        case 0 :
            if bools.0 == true {
                bools.0 = false
            } else {
                bools.0 = true
            }
        case 1 :
            if bools.1 == true {
                bools.1 = false
            } else {
                bools.1 = true
            }
        case 2 :
            if bools.2 == true {
                bools.2 = false
            } else {
                bools.2 = true
            }
        default:
            break
            
        }
        self.tableView.reloadData()
    }
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton(type: .Custom)
        button.frame = CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 44)
        let titles = Array(dic.keys)
        let title = titles[section]
        button.setTitle(title, forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "headBtnClicked:", forControlEvents: .TouchUpInside)
        button.tag = section
        
        return button
    }

}
