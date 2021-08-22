//
//  ViewController.swift
//  Part2Les2
//
//  Created by Andrei Naumenko on 22.08.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var LoginLabel: UILabel!
    @IBOutlet var LoginText: UITextField!
    
    @IBOutlet var PasswordLabel: UILabel!
    @IBOutlet var PasswordText: UITextField!
    
    @IBOutlet var LoginButton: UIButton!
    
    @IBAction func LoginButton(_ sender: Any) {
        if isValid() {
            print("Открыто")
            performSegue(withIdentifier: "TabVieewSega", sender: nil)
        }
            else {
            //print ("Закрыто")
                LoginText.text = "Нет доступа"
                PasswordText.text = "Нет доступа"
            }
        }
        
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "TabVieewSega" {
            return isValid()
        } else {
            return false
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginLabel.text = "Login:"
        LoginText.text = ""
        PasswordLabel.text = "Password:"
        PasswordText.text = ""
        
    }

    func isValid() -> Bool {
        if LoginText.text == "1"
            &&  PasswordText.text == "123"{
            return true
        }else {
                return false
        }
    }
        
        
}
    
    



