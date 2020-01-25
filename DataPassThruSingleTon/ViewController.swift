//
//  ViewController.swift
//  DataPassThruSingleTon
//
//  Created by THOTA NAGARAJU on 11/20/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    // Creating IB outlet Varabels
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var numberTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var engTF: UITextField!
    @IBOutlet weak var maths1ATF: UITextField!
    @IBOutlet weak var matha1BTF: UITextField!
    @IBOutlet weak var phyTF: UITextField!
    @IBOutlet weak var cheTF: UITextField!
    @IBOutlet weak var sanTF: UITextField!
    
   
   
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
      NotificationCenter.default.addObserver(self, selector: #selector(MsgShow(naga:)), name: NSNotification.Name("onBtnTap"), object: nil)
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
// Creating Alert Msg Functions
    
    
    @objc func MsgShow(naga:Notification){
        var data = naga.userInfo
        
        firstNameTF.text = naga.userInfo!["firstName"]as? String
        lastNameTF.text = naga.userInfo!["lastName"]as? String
        ageTF.text = naga.userInfo!["age"]as? String
        numberTF.text = naga.userInfo!["Number"]as? String
        engTF.text = naga.userInfo!["first"]as? String
        sanTF.text = naga.userInfo!["second"]as? String
        maths1ATF.text = naga.userInfo!["third"]as? String
        matha1BTF.text = naga.userInfo!["fourth"]as? String
        phyTF.text = naga.userInfo!["fifth"]as? String
        cheTF.text = naga.userInfo!["sixth"]as? String
        
    }
    
    // Creating IB Action Button
   
    @IBAction func fVcBtn(_ sender: Any) {
        
        let fVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        present(fVC, animated: true) {
            
        }
        }
    
}

