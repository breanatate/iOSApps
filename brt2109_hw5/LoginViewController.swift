//
//  ViewController.swift
//  brt2109_hw5
//
//  Created by Breana Tate on 3/3/18.
//  Copyright © 2018 Breana Tate. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var incorrectPass: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        print("button pressed")
        
        
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }

    override func viewWillAppear(_ animated: Bool) {
        usernameTextField.text = ""
        passwordTextField.text = ""
        incorrectPass.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using
        
        
        let tableViewController = segue.destination as! TableViewController
        
        
        tableViewController.username = usernameTextField!.text!
        defaults.set(tableViewController.username, forKey: "Username")
        
        
        // Pass the selected object to the new view controller.
        
        //print("prepare to show second view controller")
        //send info to the next viewcontroller---i.e. pass login info
        
        //secondViewController.username = usernameTextField!.text!
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("should i perform?")
        
        //password to check = ImCool123, extracredit if you hash the password
        
        if(usernameTextField.text == ""||passwordTextField.text == ""){
            incorrectPass.text? = "Please complete both fields"
            return false
        }
        else if(passwordTextField.text != "ImCool123"){
            incorrectPass.text? = "Incorrect Password"
            return false
        }
        
        
        return true
    }
    


}

