//
//  RegisterViewController.swift
//  GreenBottle
//
//  Created by Josue on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var paymentTF: UITextField!
    
    let users = Users()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        if let username = usernameTF.text, let password = passwordTF.text {
            for (key,value) in users.users {
                if username == key{
                    let alert = UIAlertController(title: "Error", message: "The user already exists", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    self.present(alert, animated: true, completion:  nil)
                }
                else {
                    User.shared.name = username
                    User.shared.passwd = password
                    User.shared.isLogin = true
                    
                    let instance = UIStoryboard(name: "Main", bundle: Bundle.main)
                    
                    let register = instance.instantiateViewController(withIdentifier: "Main") as! UITabBarController
                    present(register, animated: true, completion: nil)
                }
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
