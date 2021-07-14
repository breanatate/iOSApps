//
//  ViewController.swift
//  brt2109
//
//  Created by Breana Tate on 2/2/18.
//  Copyright © 2018 Breana Tate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showProfilePic(_ sender: UIButton) {
        //found using Stackoverflow
        let profilePic = "pp.jpg"
        let image = UIImage(named: profilePic)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x:25, y:100, width: 320, height: 500)
        view.addSubview(imageView)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

