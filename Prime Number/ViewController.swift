//
//  ViewController.swift
//  Prime Number
//
//  Created by D7703_07 on 2019. 4. 10..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var textF: UITextField!
    var isPrime = true
    

    @IBAction func Check(_ sender: Any) {
        if let number = Int(textF.text!){
            
            var isPrime = true
            
            if number <= 0 {
                lbl.text = "input correct vale!"
                textF.text = ""
                return
            }
            if number == 1 {
                isPrime = false
        
        }
            if number != 1 && number != 2{
                for i in 2 ..< number{
                    if number % i == 0 {
                        isPrime = false
                    }
                }
            }
            if isPrime == true {
                lbl.text = "prime number"
            }
            else{
                lbl.text = "not prime number"
            }
            textF.text = ""
    }
        else{
            print("nil발생")
            lbl.text = "input numeric value!"
            textF.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "소수입니까?"
        textF.delegate = self
        textF.placeholder = "ex>7"
        textF.clearButtonMode = UITextField.ViewMode.always
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textF.resignFirstResponder()
        return true
    }


}

