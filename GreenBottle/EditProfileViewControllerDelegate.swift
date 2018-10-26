//
//  EditProfileViewControllerDelegate.swift
//  GreenBottle
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 10/26/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation
protocol EditProfileViewControllerDelegate {
    func editProfileViewController(_ controler: EditProfileViewController, didFinishSaving: User)
}
