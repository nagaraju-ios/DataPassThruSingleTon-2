//
//  ThirdViewController.swift
//  DataPassThruSingleTon
//
//  Created by THOTA NAGARAJU on 11/20/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITextFieldDelegate {

    // Craeting IBoutlet varbels
    
    var dictionary = [String:Any]()
    var dict1 = [String:Any]()
    var dictionary3 = [String:Any]()
    
    @IBOutlet weak var thTF1: UITextField!
    @IBOutlet weak var thTF2: UITextField!
    @IBOutlet weak var thTF3: UITextField!
    @IBOutlet weak var thTF4: UITextField!
    @IBOutlet weak var thTF5: UITextField!
    @IBOutlet weak var thTF6: UITextField!
    var allowableNumbers = CharacterSet(charactersIn: "1234567890 ")
    override func viewDidLoad() {
        super.viewDidLoad()
//        thTF1.delegate = self
//        thTF2.delegate = self
//        thTF3.delegate = self
//        thTF4.delegate = self
//        thTF5.delegate = self
//        thTF6.delegate = self

        // Do any additional setup after loading the view.
    }
    // Present method functions
    
    @IBAction func thVcBtn(_ sender: Any) {
        dictionary3 = ["firstTF":thTF1.text!,"secondTF":thTF2.text!,"thirdTF":thTF3.text!,"fourthTF":thTF4.text!,"fifthTF":thTF5.text!,"sixthTF":thTF6.text!]
        
        NotificationCenter.default.post(name: NSNotification.Name("onBtnTap22"), object: self, userInfo:dictionary3)
        
        let fVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        present(fVC, animated: true) {
            
        }

    }
//        if((thTF1.text  != "") && (thTF2.text  != "") && (thTF3.text  != "") && (thTF4.text  != "") && (thTF5.text  != "") && (thTF6.text  != ""))
//        {
//
//            let tvc = self.storyboard?.instantiateViewController(withIdentifier: "FourthVc") as!
//            FourthViewController
//            present(tvc, animated: true) {
//
//            }
//        }else
//        {
//            alertMsg()
//        }
//
//    }
//  //textFieldShouldBeginEditing validations
//
//        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
//        {
//            if (textField==thTF1){
//
//                return true
//            }
//
//            if (textField==thTF2){
//                if ((Int(thTF1.text!)!<100)){
//
//                    return true
//
//                }   else
//                {
//                    alertMsg()
//                    return false
//                }
//
//            }
//            else if (textField==thTF3){
//
//                if ((Int(thTF1.text!)!<100) &&
//                    (Int(thTF2.text!)!<100)){
//
//
//                    return true
//
//                }else
//                {
//                    alertMsg()
//                    return false
//                }
//            }
//            else if (textField==thTF4){
//
//                if ((Int(thTF1.text!)!<100) &&
//                    (Int(thTF2.text!)!<100) &&
//                    (Int(thTF3.text!)!<75))
//                {
//
//                    return true
//
//                }else
//                {
//                    alertMsg()
//                    return false
//                }
//
//            }
//
//
//            else if (textField==thTF5){
//
//                if ((Int(thTF1.text!)!<100) &&
//                    (Int(thTF2.text!)!<100) &&
//                    (Int(thTF3.text!)!<75) &&
//                    (Int(thTF4.text!)!<75) )
//                {
//
//                    return true
//
//                }else
//                {
//                    alertMsg()
//                    return false
//                }
//
//            }
//            else if (textField==thTF6){
//
//                if ((Int(thTF1.text!)!<100) &&
//                    (Int(thTF2.text!)!<100) &&
//                    (Int(thTF3.text!)!<75) &&
//                    (Int(thTF4.text!)!<75) &&
//                    (Int(thTF5.text!)!<60))
//                {
//
//                    return true
//
//                }else
//                {
//                    alertMsg()
//                    return false
//                }
//
//            }
//            return true
//        }
//
//        func textFieldDidBeginEditing(_ textField: UITextField)
//        {
//            textField.backgroundColor = UIColor.yellow
//        }
//
//
//        func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
//        {
//
//            return true
//            }
//
//            func textFieldDidEndEditing(_ textField: UITextField)
//            {
//
//
//            }
//            func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
//            {
//            }
//    //  ChangeCharacters TextFeild Vaildations
//
//        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool // return NO to not change text
//        {
//
//
//            if (textField == thTF1 || textField == thTF2 || textField == thTF3 || textField ==  thTF4 || textField == thTF5 || textField == thTF6)
//            {
//
//                if ((string.rangeOfCharacter(from:allowableNumbers)) != nil)||(string=="")
//                {
//                    return true
//                }else {
//
//                    alertMsg()
//                    return false
//                }
//            }
//
//            return true
//        }
//
//
//        func textFieldShouldClear(_ textField: UITextField) -> Bool
//        {
//            return true
//        }
//        func textFieldShouldReturn(_ textField: UITextField) -> Bool
//        {
//            return true
//        }
//
//        // Creating Alert action func
//
//        func alertMsg(){
//
//            var  ac = UIAlertController(title: "Warning", message: "Invalid, Enter Valid Data", preferredStyle: UIAlertController.Style.alert)
//            present(ac,animated:true,completion: nil)
//
//            var   action = UIAlertAction(title: "Ok", style:UIAlertAction.Style.default) { (YesAC) in
//                print("OK is Press")
//            }
//            ac.addAction(action)
//
//
//        }
//
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
