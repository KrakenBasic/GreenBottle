//
//  AppStoryboard.swift
//  GreenBottle
//
//  Created by Alexis Celestino Solís on 10/26/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboard {
    case OrderFlow, Main, UserProfileStoryboard, Login
    var nameStoryboard: String {
        switch self {
        case .OrderFlow:
            return "OrderFlow"
        case .Main:
            return "Main"
        case .UserProfileStoryboard:
            return "UserProfileStoryboard"
        case .Login:
            return "Login"
        }
    }
    
    var instance: UIStoryboard {
        return UIStoryboard(name: nameStoryboard, bundle: Bundle.main)
    }
    
}
