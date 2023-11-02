//
//  ViewController.swift
//  IOS Learning
//
//  Created by Naveen kUSHWAHA on 02/11/23.
//  Copyright © 2023 Naveen kUSHWAHA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        login.layer.cornerRadius = 15
        reset.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    @IBAction func reset(_ sender: Any) {
        username.text = ""
        password.text = ""
    }
    @IBAction func login(_ sender: Any) {
        if username.text == "naveen123" && password.text == "naveen@123"
        {
            performSegue(withIdentifier: "login", sender: nil)
        }
        else {
            let alrt = UIAlertController(title: "Wrong username or password", message: "", preferredStyle: UIAlertController.Style.alert)
            alrt.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.destructive, handler: nil))
            present(alrt, animated: true, completion: nil)
            username.text = ""
            password.text = ""
        }
      
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}


