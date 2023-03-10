//
//  ViewController.swift
//  Alerts
//
//  Created by Alper Canımoğlu on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confrimPasswordLabel: UILabel!
    @IBOutlet weak var confrimPasswordTextField: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usernameTextField.text = ""
        passwordTextField.text = ""
        confrimPasswordTextField.text = ""
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        if passwordTextField.text == "Apple123" && passwordTextField.text == confrimPasswordTextField.text && usernameTextField.text == "CnmAlper"{
            
            userName = usernameTextField.text!
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if usernameTextField.text == ""{
            makeAlert(userInput: "Error!", messageInput: "Username not found.")
            
        } else if passwordTextField.text == ""{
            makeAlert(userInput: "Error!", messageInput: "Password not found.")
        } else if passwordTextField.text != confrimPasswordTextField.text {
            makeAlert(userInput: "Error!", messageInput: "Passwords do not match.")
        }
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            //as! casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myUserName = "You signed up as: \(userName)"
        }
        
        
    }
    func makeAlert(userInput:String, messageInput:String){
        let alert = UIAlertController(title: userInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
}
