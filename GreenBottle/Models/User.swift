//
//  User.swift
//  GreenBottle
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 10/26/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation
import UIKit

struct User{
    
    static var shared = User()
    
    var name: String = ""
    var passwd: String = ""
    var userImage: UIImage = UIImage.init(named: "defaultUser")!
    var isLogin: Bool = false
    
    
    
}
