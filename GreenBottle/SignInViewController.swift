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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        if userTextField.text == "Josue" && passwordTextField.text == "12345"{
            //Cambiar lo siguiente cuando se tenga acceso a las credenciales en el back:
            let register = self.storyboard?.instantiateViewController(withIdentifier: "LoginSB") as! RegisterViewController
//            let register = RegisterViewController()
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
