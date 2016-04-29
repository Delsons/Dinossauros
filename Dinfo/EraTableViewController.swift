//
//  EraTableViewController.swift
//  Dinfo
//
//  Created by Delson Silveira on 4/21/16.
//  Copyright © 2016 Kongros Interactive. All rights reserved.
//

import UIKit

class EraTableViewController: UITableViewController {

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
        
        self.title = "Períodos"
        
         //self.title = "Períodos"
        
        
        
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
        return 3
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! EraTableViewCell
        
        
        
        cell.accessoryType = .None
        
        // Configure the cell...
        
        if indexPath.row == 0 {
            cell.eraImage.image = UIImage(named: "thumb_era01")
            cell.eraBgImage.image = UIImage(named: "bg_lista")
            cell.era.font = UIFont(name: "OpenSans-Bold", size: 16)
            cell.era.text = "CRETÁCEO"
            cell.eraPeriodo.font = UIFont(name: "OpenSans", size: 16)
            cell.eraPeriodo.text = "Entre 145 milhões e 65 milhões de anos atrás"
        } else if indexPath.row == 1 {
            cell.eraImage.image = UIImage(named: "thumb_era02")
            cell.eraBgImage.image = UIImage(named: "bg_lista")
            cell.era.font = UIFont(name: "OpenSans-Bold", size: 16)
            cell.era.text = "JURÁSSICO"
            cell.eraPeriodo.font = UIFont(name: "OpenSans", size: 16)
            cell.eraPeriodo.text = "Entre 201 milhões a 145 milhões de anos atrás"
            
        } else if indexPath.row == 2 {
            cell.eraImage.image = UIImage(named: "thumb_era03")
            cell.eraBgImage.image = UIImage(named: "bg_lista")
            cell.era.font = UIFont(name: "OpenSans-Bold", size: 16)
            cell.era.text = "TRIÁSSICO"
            cell.eraPeriodo.font = UIFont(name: "OpenSans", size: 16)
            cell.eraPeriodo.text = "Entre 250 milhões a 200 milhões de anos atrás"
            
        }
        
        // Circular image
        //        cell.thumbnailImageView.layer.cornerRadius = 10.0
        //cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        //cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "showDinossaurs" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! DinoTableViewController
                
                
                let nav = self.navigationController?.navigationBar
                nav?.backItem?.title = "Something Else"

                //destinationController.restaurantImage = self.restaurantImages[indexPath.row]
                
            }
        }
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
