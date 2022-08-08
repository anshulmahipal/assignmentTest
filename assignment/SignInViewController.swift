//
//  ViewController.swift
//  assignment
//
//  Created by Anshul Mahipal on 08/08/22.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTapLogin(_ sender: Any) {
        if isEnterDataIsValid(username: userNameTF.text ?? "", password: passwordTF.text ?? "") {
            // make a login API
            return
        }
        // show alert code goes here
    }
    
    func isEnterDataIsValid(username: String, password: String) -> Bool {
        return !username.isEmpty || !password.isEmpty
    }

}

