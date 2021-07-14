//
//  TableViewController.swift
//  brt2109_hw4
//
//  Created by Breana Tate on 2/24/18.
//  Copyright © 2018 Breana Tate. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let feedCellIdentifier = "FeedTableViewCell"
    let defaultCellIdentifier = "defaultCell"
    let defaultSection = 0
    let feedSection = 1
    var posts : [String] = []
    
    var fibVals = [Int]()
    
    var count = 0
    var secNum = 0
    
    //fibonacci function from https://www.weheartswift.com/recursion/
    func fibonacci(_ i: Int) -> Int {
        if i <= 2 {
            return 1
        } else {
            return fibonacci(i - 1) + fibonacci(i - 2)
        }
    }
    
    //does crash around 91 I believe because of this structure. Never clear the array
    func getNextVals(_ i: Int){
            //fibVals.append(fibonacci(i))
            fibVals.append(fibVals[i-1] + fibVals[i-2])
            count+=1
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("start")
        
        for x in 1...20{
            fibVals.append(fibonacci(x))
            count+=1
        }
        
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: defaultCellIdentifier)
        
        self.tableView.register(UINib(nibName: feedCellIdentifier, bundle: nil), forCellReuseIdentifier: feedCellIdentifier)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
       return fibVals.count
    }
    
    override func tableView(_ tableView: UITableView,
                            estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat{
        return UITableViewAutomaticDimension
    }
    
    
  /*  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 300
        
    }*/
    
    /*override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row + 1 == fibVals.count {
            getNextVals(count)
        }
    }*/
   
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        
        if offsetY > contentHeight - scrollView.frame.size.height {
            
            getNextVals(count)
            
            /* reload tableview with new data */
           
            self.tableView.reloadData()
            
        }
    }
    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> FeedTableViewCell {
        
        let cell : FeedTableViewCell
        
        cell = tableView.dequeueReusableCell(withIdentifier: feedCellIdentifier, for: indexPath) as! FeedTableViewCell
    
    // let cell = tableView.dequeueReusableCellWithIdentifier("aCell") as! SavedTableViewCell
    
    
        var vals = fibVals[indexPath.row]
    
        cell.textLabel?.text = "\(vals)"
        print(indexPath.row)
    
        return cell
    }
    
    
    
    
    
    /*override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, cellforRowAt indexPath: IndexPath) -> FeedTableViewCell{
        
        print("indexPath section: \(indexPath.section)")
        
        let cell : FeedTableViewCell
        
        cell = tableView.dequeueReusableCell(withIdentifier: feedCellIdentifier, for: indexPath) as! FeedTableViewCell
        for i in 1...20{
            if(indexPath.row % i == 0){
                cell.textLabel?.text = "\(fibonacci(i))"
            }
            
            if(i > 17){
                for j in i...i+20{
                    if(indexPath.row % j == 0){
                        cell.textLabel?.text = "\(fibonacci(j))"
                    }
                
            }
            
        }
        
        
        return cell
        
        
    }*/
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

