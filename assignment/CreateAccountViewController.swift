//
//  CreateAccountViewController.swift
//  assignment
//
//  Created by Anshul Mahipal on 08/08/22.
//

import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogin(_ sender: UIButton) {
        if isDataValid(UserData(
            firstName: firstNameTF.text ?? "",
            lastName: lastNameTF.text ?? "",
            email: emailTF.text ?? "",
            username: usernameTF.text ?? "",
            password: passwordTF.text ?? "")) {
            
            // code for make api Call
            
        }else {
            
            // code for show erroe alert
        }
    }
    
    func isEmailValid(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return !email.isEmpty && emailPred.evaluate(with: email)
    }
    
    func isDataValid(_ data: UserData) -> Bool {
        return data.firstName.isEmpty ||
        data.lastName.isEmpty ||
        self.isEmailValid(data.email) ||
        self.isPasswordStrongEnough(data.password) ||
        self.isUsernameValid(data.username)
    }
    
    func isPasswordStrongEnough(_ password: String) -> Bool {
        return !password.isEmpty
    }
    
    func isUsernameValid(_ username: String) -> Bool {
        // can add more code to test username from the api
        return username.isEmpty
    }
    
}

struct UserData {
    let firstName: String
    let lastName: String
    let email: String
    let username: String
    let password: String
}

