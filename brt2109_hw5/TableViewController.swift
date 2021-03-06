//
//  TableViewController.swift
//  brt2109_hw5
//
//  Created by Breana Tate on 3/3/18.
//  Copyright © 2018 Breana Tate. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
   
    let defaults = UserDefaults.standard
    var username = ""
    let feedCellIdentifier = "TableViewCell"
    let defaultCellIdentifier = "defaultCell"

    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        print("secondviewcontroller UNWIND")
        
        
    }
    
  
    
    
    @IBAction func logoutButton(_ sender: Any) {
        
        print("logout")
        defaults.set("", forKey: "Username")
        
        
        
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
      
        
       
        
        
 self.tableView.register(TableViewCell.self,forCellReuseIdentifier: "TableViewCell")
        
        
    


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
    
    /*override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let tv = self.tableView.tableHeaderView
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        //button.backgroundColor = .greenColor()
        button.setTitle("Logout", for: .normal)
        button.addTarget(self, action: #selector(logoutButton(_:)), for: .touchUpInside)
        
        tv?.addSubview(button)
        
        return tv
    }*/
    
   

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 15
    }
    

    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for:indexPath)
    
         cell.textLabel?.text = username

        
       
        // Configure the cell...

        return cell
    }
    
  
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    

}
