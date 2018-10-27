//
//  EditProfileViewController.swift
//  GreenBottle
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 10/20/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit



class EditProfileViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwdTF: UITextField!
    
    var delegate: EditProfileViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changePhoto(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Photos", message: "Select your source photo", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        let imagePìckerView = UIImagePickerController()
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action) in
            
            imagePìckerView.sourceType = .photoLibrary
            imagePìckerView.allowsEditing = true //para que cuando la seleccionemos pase a otro view controller que le permitira editar
            imagePìckerView.delegate = self
            self.present(imagePìckerView, animated: true, completion: nil)
        }))
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            imagePìckerView.sourceType = .camera
        }))
        present(actionSheet, animated: true, completion: nil)
        imagePìckerView.allowsEditing = true //para que cuando la seleccionemos pase a otro view controller que le permitira editar
        imagePìckerView.delegate = self
        self.present(imagePìckerView, animated: true, completion: nil)
        //Pedir permisos al usuario: infoplist -> privacy camera

    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        print("Selection Cancelled")
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let URLimage = info["UIImagePickerControllerImageURL"]
        print(URLimage!)
        guard let image = info[UIImagePickerControllerEditedImage] as? UIImage else {return}
        profileImage.image = image
        picker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonIsTap(_ sender: UIButton) {
        
        guard let user = nameTF.text, let pass = passwdTF.text, let image = profileImage.image  else {
            let alert = UIAlertController(title: "Error", message: "You need to have a Username and a Password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        let currentUser = User(name: user, passwd: pass, userImage: image)
        delegate?.editProfileViewController(self, didFinishSaving: currentUser)
        //self.dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        
    }
    
    
    

}
