//
//  LogoutTableViewCell.swift
//  brt2109_hw5
//
//  Created by Breana Tate on 3/3/18.
//  Copyright © 2018 Breana Tate. All rights reserved.
//

import UIKit

protocol LogoutTableViewCellDelegate {
    func logoutTapped(cell: LogoutTableViewCell)
}


class LogoutTableViewCell: UITableViewCell {
    
   
  
    
    @IBAction func logoutButton(_ sender: UIButton) {
    }
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
    }
    


    
    
    
    //@IBOutlet weak var logoutButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.logoutButton.isHidden = false
        // Initialization code
        //self.logoutButton.isHidden = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
