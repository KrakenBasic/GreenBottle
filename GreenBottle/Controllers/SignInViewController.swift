//
//  SignInViewController.swift
//  GreenBottle
//
//  Created by Josue on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    let users = Users()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let userEnter = userTextField.text else {
            return
        }
        if passwordTextField.text == users.users[userEnter]{
            //Cambiar lo siguiente cuando se tenga acceso a las credenciales en el back:
            
            User.shared.isLogin = true
            User.shared.name = userTextField.text!
            User.shared.passwd = passwordTextField.text!
            
            let instance = UIStoryboard(name: "Main", bundle: Bundle.main)
            
            let register = instance.instantiateViewController(withIdentifier: "Main") as! UITabBarController
////            let register = RegisterViewController()
            present(register, animated: true, completion: nil)
            
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
