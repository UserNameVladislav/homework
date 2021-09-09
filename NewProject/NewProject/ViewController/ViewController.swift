//
//  ViewController.swift
//  NewProject
//
//  Created by Vladislav Alexandrovich on 7.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var LoginTextFild: UITextField!
    @IBOutlet var PasswordTextFild: UITextField!
    @IBAction func LoginButton(_ sender: Any) {
        if inValid() {
            print("Login ON")
        }
    }
    
    func inValid() -> Bool {
        if LoginTextFild.text == "Admin" && PasswordTextFild.text == "1234" {
            return true
        }
        else {
            return false
        }
    }
}

