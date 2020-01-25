//
//  SecondViewController.swift
//  DataPassThruSingleTon
//
//  Created by THOTA NAGARAJU on 11/20/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
// Creating IB outlets Varables
    
    @IBOutlet weak var fNameTF: UITextField!
    @IBOutlet weak var lNameTF: UITextField!
    @IBOutlet weak var ageTF1: UITextField!
    @IBOutlet weak var numTF: UITextField!
    @IBOutlet weak var scTF1: UITextField!
    @IBOutlet weak var scTF2: UITextField!
    @IBOutlet weak var scTF6: UITextField!
    @IBOutlet weak var scTF3: UITextField!
    @IBOutlet weak var scTF5: UITextField!
    @IBOutlet weak var scTF4: UITextField!
    
  
     var dictionary = [String:Any]()
    
     var allowableNumbers = CharacterSet(charactersIn: "1234567890 ")
     override func viewDidLoad() {
        super.viewDidLoad()
         fNameTF.delegate = self
         lNameTF.delegate = self
         ageTF1.delegate = self
         numTF.delegate = self
         scTF1.delegate = self
         scTF2.delegate = self
         scTF3.delegate = self
         scTF4.delegate = self
         scTF5.delegate = self
         scTF6.delegate = self
        // Do any additional setup after loading the view.
    }
    
   // Creating Alert action func
    
    var msg:String?
    func alertMsg(){
        
        var  ac = UIAlertController(title: "Warning", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
            present(ac,animated:true,completion: nil)
        
        var   action = UIAlertAction(title: "Ok", style:UIAlertAction.Style.default) { (YesAC) in
            print("OK is Press")
        }
        ac.addAction(action)
        
        
    }
    

   
    // Creating IB action Button
    
    @IBAction func scBtn(_ sender: Any) {
       

        if((fNameTF.text  != "") && (lNameTF.text  != "") && (ageTF1.text  != "") && (numTF.text  != "") && (scTF1.text  != "") && (scTF2.text  != "") && (scTF3.text  != "") && (scTF4.text  != "") && (scTF5.text  != "") && (scTF6.text  != ""))
        {

       
    dictionary = ["firstName":fNameTF.text!,"lastName":lNameTF.text!,"age":ageTF1.text!,"Number":numTF.text!,"first":scTF1.text!,"second":scTF2.text!,"third":scTF3.text!,"fourth":scTF4.text!,"fifth":scTF4.text!,"sixth":scTF4.text!]
        
        NotificationCenter.default.post(name: NSNotification.Name("onBtnTap"), object: self, userInfo:dictionary)
           dismiss(animated: true) {
            
             }
        }
        else
        {
            msg = " Invalid,Enter all feilds"
            alertMsg()
        }
    
    }
    
//textFieldShouldBeginEditing validations
    
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
        {
            var returnValue = false
            if (textField==fNameTF){
                
                returnValue = true
            }
            
            if (textField==lNameTF){
                if (fNameTF.text!.count>1){
                    print(123456)
                    returnValue = true
                    
                }   else
                {
                    msg = " Invalid,Please fii above, enter Letters only"
                    alertMsg()
                    returnValue = false
                }
                
            }
            else if (textField==ageTF1){
                
                if (fNameTF.text!.count>1 &&
                    lNameTF.text!.count>1){
                    
                    
                    returnValue = true
                    
                }else
                {
                     msg = " Invalid,Please fii above"
                    alertMsg()
                    returnValue = false
                }
            }
            else if (textField==numTF){
                
                if (fNameTF.text!.count>1 &&
                    lNameTF.text!.count>1 &&
                    (ageTF1.text?.count)!>=1)
                {
                    if(Int(ageTF1.text!)! <= 120){
                        returnValue = true
                    }
                    
                }else
                {
                     msg = " Invalid,Please fii above and Enter age Max 120 "
                    alertMsg()
                    returnValue = false
                }
            }
          
            else if (textField==scTF1){
                 if(fNameTF.text!.count>1 &&
                  lNameTF.text!.count>1 &&
                  (ageTF1.text?.count)!>=1) &&
                   (numTF.text!.count==10){
                returnValue = true
              }
               else
            {
                msg = " Invalid,Please fii above and Should be  Enter 10 numbers"
                alertMsg()
                 returnValue = false
            }
            
             }
            if (textField==scTF2){
                if ((fNameTF.text!.count>1 &&
                     lNameTF.text!.count>1 &&
                    (ageTF1.text?.count)!>=1) &&
                      numTF.text!.count==10 &&
                    (Int(scTF1.text!)!<100)){

                    returnValue = true

                }   else
                {
                    msg = " Invalid,Please fii above and Enter Marks 0 to 75"
                    alertMsg()
                     returnValue = false
                }

            }
            else if (textField==scTF3){

                if ((fNameTF.text!.count>1 &&
                    lNameTF.text!.count>1 &&
                    (ageTF1.text?.count)!>=1) &&
                    numTF.text!.count==10 &&
                    (Int(scTF1.text!)!<100) &&
                    (Int(scTF2.text!)!<100)){


                   returnValue = true

                }else
                {
                    msg = " Invalid,Please fii above and Enter Marks 0 to 75"
                    alertMsg()
                    returnValue = false
                }
            }
            else if (textField==scTF4){

                if ((fNameTF.text!.count>1 &&
                    lNameTF.text!.count>1 &&
                    (ageTF1.text?.count)!>=1) &&
                    numTF.text!.count==10 &&
                    (Int(scTF1.text!)!<100) &&
                    (Int(scTF2.text!)!<100) &&
                    (Int(scTF3.text!)!<75))
                {

                    returnValue = true

                }else
                {
                    msg = " Invalid,Please fii above and Enter Marks 0 to 75"
                    alertMsg()
                     returnValue = false
                }

            }


            else if (textField==scTF5){

                if ((fNameTF.text!.count>1 &&
                    lNameTF.text!.count>1 &&
                    (ageTF1.text?.count)!>=1) &&
                    numTF.text!.count==10 &&
                    (Int(scTF1.text!)!<100) &&
                    (Int(scTF2.text!)!<100) &&
                    (Int(scTF3.text!)!<75) &&
                    (Int(scTF4.text!)!<75) )
                {

                    returnValue = true

                }else
                {
                    msg = " Invalid, Please fii above and Enter Marks 0 to 60"
                    alertMsg()
                   returnValue = false
                }

            }
            else if (textField==scTF6){

                if ((fNameTF.text!.count>1 &&
                    lNameTF.text!.count>1 &&
                    (ageTF1.text?.count)!>=1) &&
                    numTF.text!.count==10 &&
                    (Int(scTF1.text!)!<100) &&
                    (Int(scTF2.text!)!<100) &&
                    (Int(scTF3.text!)!<75) &&
                    (Int(scTF4.text!)!<75) &&
                    (Int(scTF5.text!)!<60))
                {

                   returnValue = true
                }else
                {
                    msg = " Invalid,Please fii above and Enter Marks 0 to 60"
                    alertMsg()
                     returnValue = false
                }

            }
            return returnValue
        }
//  textFieldDidBeginEditing TextFeild Vaildations
    
        func textFieldDidBeginEditing(_ textField: UITextField)
        {
            textField.backgroundColor = UIColor.yellow
        }


        func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
        {

        return true
         }
            func textFieldDidEndEditing(_ textField: UITextField)
            {


            }
            func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
            {

            }

//  ChangeCharacters TextFeild Vaildations

            func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool // return NO to not change text
            {
               
                if (textField==fNameTF || textField==lNameTF)
                {
                    var allowableCharacters = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvw ")
                    
                    if ((string.rangeOfCharacter(from:allowableCharacters)) != nil)||(string=="")
                    {
                        
                        return true
                        
                    }
                    else
                    {
                        msg = " Invalid,Enter Letters only"
                        alertMsg()
                        return false
                    }
                    
                }

                if (textField==ageTF1 || textField==numTF || textField==scTF1 || textField==scTF2 || textField==scTF3 || textField==scTF4 || textField==scTF5 || textField==scTF6)
                {

                    if ((string.rangeOfCharacter(from:allowableNumbers)) != nil)||(string=="")
                    {
                        return true
                    }else {
                        msg = " Invalid,Enter Numbers only"

                        alertMsg()
                        return false
                    }
                }

                return true
            }


            func textFieldShouldClear(_ textField: UITextField) -> Bool
            {
                return true
            }
            func textFieldShouldReturn(_ textField: UITextField) -> Bool
            {
                return true
            }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
    

