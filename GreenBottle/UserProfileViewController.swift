//
//  UserProfileViewController.swift
//  GreenBottle
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 10/20/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, EditProfileViewControllerDelegate {
    
    

    
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var lastBeerLabel: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func paymentsIsTap(_ sender: Any) {
    }
    @IBAction func profileIsTap(_ sender: Any) {
    }
    @IBAction func logOutIsTap(_ sender: Any) {
    }
    
    func editProfileViewController(_ controler: EditProfileViewController, didFinishSaving: User) {
        userNameLabel.text = didFinishSaving.name
        imageUser.image = didFinishSaving.userImage
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profile" {
            let controller = segue.destination as! EditProfileViewController
            controller.delegate = self
            
        }
    }
    

}