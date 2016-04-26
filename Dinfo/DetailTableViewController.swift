//
//  DetailTableViewController.swift
//  Dinfo
//
//  Created by Delson Silveira on 4/22/16.
//  Copyright © 2016 Kongros Interactive. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController!.navigationBar.setBackgroundImage(UIImage(named:"bg_nav"),
                                                                    forBarMetrics: .Default)
        
        
        
        let nav = self.navigationController?.navigationBar
        nav?.tintColor = UIColor.whiteColor()
        nav?.backIndicatorImage = UIImage(named:"back")
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSForegroundColorAttributeName: UIColor.whiteColor(),
             NSFontAttributeName: UIFont(name: "OpenSans-Bold", size: 21)!]
        
        self.title = "Detalhe"
        
        
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
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! DetailTableViewCell
        
        
        // Configure the cell...
        
        if indexPath.row == 0 {
            
            


            cell.accessoryType = .None

            cell.dinoImage.image = UIImage(named: "Ornithocheirus")

            cell.dinoDescription.text = name
            
        } /* else if indexPath.row == 1 {
            
            
            let cellIdentifier = "CellLabel"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) 
            cell.accessoryType = .None

            cell.textLabel?.text = "DELSON"
            return cell
        }
        */
        
        // Circular image
        //        cell.thumbnailImageView.layer.cornerRadius = 10.0
        //cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        //cell.thumbnailImageView.clipsToBounds = true
        
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
