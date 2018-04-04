//
//  MainViewController.swift
//  AMLoginSingup
//
//  Created by Kyaw Ye Htun on 4/3/18.
//  Copyright © 2018 amirs.eu. All rights reserved.
//


import Foundation
import UIKit
import Firebase
class MainViewController : UIViewController{
    
    @IBOutlet weak var logoutBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func logOutAction(_ sender: Any) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "email") as! ViewController
                self.present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
}

