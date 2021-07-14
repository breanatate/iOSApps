//
//  AppDelegate.swift
//  brt2109_hw5
//
//  Created by Breana Tate on 3/3/18.
//  Copyright © 2018 Breana Tate. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
   

    var window: UIWindow?
    
    var loginView = LoginViewController()
    var tableView = TableViewController()
    
    
    let defaults = UserDefaults.standard


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        if(defaults.object(forKey: "Username") as! String? != "" && defaults.object(forKey: "Username") as! String? != nil){
            print("here")
            
           
            
            self.window = UIWindow(frame: UIScreen.main.bounds)
            
           
            let _: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
           /* var exampleViewController: ExampleViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ExampleController") as! ExampleViewController*/
            
            self.window?.rootViewController = tableView
            tableView.username = (loginView.defaults.object(forKey: "Username") as! String?)!
            
            
            //self.window?.makeKeyAndVisible()
            //self.tableView.logout?.isHidden = false
            self.window?.isHidden = false
            
            return true
            
          
            
            
            
            
            
            
        }
        
        /*else{
            
             let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "login") as! LoginViewController
            let navigationController = UINavigationController.init(rootViewController: loginViewController)
            self.window?.rootViewController = navigationController
            window!.makeKeyAndVisible()
        }*/
        else{
        return true
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        print("called will enter background")
       // let user = tableView.username as String
        //defaults.set(user, forKey: "Username")
        //print("set defaults \(user)")
        defaults.synchronize()
        
        //print("\(user)")
        
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        
        
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
        print("called will terminate")
        //let user = tableView.username as String
        
            //defaults.set(user, forKey: "Username")
            defaults.synchronize()
        
            //print("\(user)")
        
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

