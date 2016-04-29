//
//  DiniTableViewController.swift
//  Dinfo
//
//  Created by Delson Silveira on 4/22/16.
//  Copyright © 2016 Kongros Interactive. All rights reserved.
//

import UIKit

/*
var names = [String]()
var fileNames = [String]()
var periodos = [String]()
var alimentos = [String]()
var localidades = [String]()
*/


var dinossaurosArray = [Dinossauro]()
let searchController = UISearchController(searchResultsController: nil)
var filteredDinossauros = [Dinossauro]()

class DinoTableViewController: UITableViewController {
    
    
    func filterContentforSearchText(searchText:String, scope:String = "All") {
        
        
        filteredDinossauros = dinossaurosArray.filter {dino in
            
            let typeMatch = (scope == "All") || (dino.alimentos  == scope)
            
            return typeMatch && dino.names.lowercaseString.containsString(searchText.lowercaseString)
            
        }
        tableView.reloadData()
        
    }
    

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
        
        
        self.title = "Dinossauros"
        
        
        
        
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        
        searchController.searchBar.scopeButtonTitles = ["All","Carnívoro", "Herbívoro"]
        searchController.searchBar.delegate = self

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

        if searchController.active && searchController.searchBar.text != ""
        {
           return filteredDinossauros.count
        } else {
            return dinossaurosArray.count
        }
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! DinoTableViewCell
        
        
        
        let dino : Dinossauro
        
        if searchController.active && searchController.searchBar.text != ""
        {
            dino = filteredDinossauros[indexPath.row]
        } else {
            dino =  dinossaurosArray[indexPath.row]
        }
        
        cell.accessoryType = .None
        

        cell.dinoImage.image = UIImage(named: dino.fileNames)
        cell.dinoImage.layer.borderWidth = 1.0
        cell.dinoImage.layer.masksToBounds = false
        cell.dinoImage.layer.borderColor = UIColor.whiteColor().CGColor
        cell.dinoImage.layer.cornerRadius = cell.dinoImage.frame.size.width/2
        cell.dinoImage.clipsToBounds = true


        
        // Circular image
        //        cell.thumbnailImageView.layer.cornerRadius = 10.0
        //cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        //cell.thumbnailImageView.clipsToBounds = true
        
        
        //cell.eraBgImage.image = UIImage(named: "bg_lista")
        
        
        
        cell.dinoDescription.font = UIFont(name: "OpenSans", size: 13)
        cell.dinoClass.font = UIFont(name: "OpenSans", size: 14)
        cell.dinoTitle.font = UIFont(name: "OpenSans-Bold", size: 16)
        
        cell.dinoTitle.text = dino.names
        cell.dinoClass.text = dino.alimentos
        cell.dinoDescription.text = dino.localidades
        
        
        // Configure the cell...
        /*
        if indexPath.row == 0 {
            cell.dinoImage.image = UIImage(named: fileNames[indexPath.row])
            
            //cell.eraBgImage.image = UIImage(named: "bg_lista")
            
            
            
            cell.dinoDescription.font = UIFont(name: "OpenSans", size: 13)
            cell.dinoClass.font = UIFont(name: "OpenSans", size: 14)
            cell.dinoTitle.font = UIFont(name: "OpenSans-Bold", size: 16)

            cell.dinoTitle.text = names[indexPath.row]
            cell.dinoClass.text = alimentos[indexPath.row]
            
            cell.dinoDescription.text = "Entre 145 milhões e 66 milhões de anos atrás"
            
            
        } else if indexPath.row == 1 {
            cell.dinoImage.image = UIImage(named: "thumb_era02")
            cell.dinoDescription.font = UIFont(name: "OpenSans", size: 13)
            cell.dinoClass.font = UIFont(name: "OpenSans", size: 14)
            cell.dinoTitle.font = UIFont(name: "OpenSans-Bold", size: 16)
            
            
            
            cell.dinoTitle.text = "T-REX II"
            cell.dinoClass.text = "Carnivoro"
            cell.dinoDescription.text = "Entre 145 milhões e 66 milhões de anos atrás"
            
        } else if indexPath.row == 2 {
            cell.dinoImage.image = UIImage(named: "thumb_era03")
            
            cell.dinoDescription.font = UIFont(name: "OpenSans", size: 13)
            cell.dinoClass.font = UIFont(name: "OpenSans", size: 14)
            cell.dinoTitle.font = UIFont(name: "OpenSans-Bold", size: 16)
            
            
            
            cell.dinoTitle.text = "T-REX II"
            cell.dinoClass.text = "Carnivoro"
            cell.dinoDescription.text = "Entre 145 milhões e 66 milhões de anos atrás"
            
            

        }
        */
        
        
        // Circular image
        //        cell.thumbnailImageView.layer.cornerRadius = 10.0
        //cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        //cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }

    
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "dinossaursDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! DetailTableViewController
                
                let dinoDetail : Dinossauro
                
                if searchController.active && searchController.searchBar.text != ""
                {
                    dinoDetail = filteredDinossauros[indexPath.row]
                } else {
                    dinoDetail =  dinossaurosArray[indexPath.row]
                }
                
                
                
                //destinationController.name = dinossaurosArray[(self.tableView.indexPathForSelectedRow?.row)!].names
                
                
                //destinationController.fileName = dinossaurosArray[(self.tableView.indexPathForSelectedRow?.row)!].fileNames
                
                destinationController.dino = dinoDetail
                
                
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


extension DinoTableViewController:UISearchResultsUpdating {
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        filterContentforSearchText(searchController.searchBar.text!)
    }
    
}



extension DinoTableViewController:UISearchBarDelegate {
    
    func searchBar(searchBar: UISearchBar,
                   selectedScopeButtonIndexDidChange selectedScope: Int) {
        
        
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        
        filterContentforSearchText(searchBar.text!, scope: scope)
        
    }
    
}


