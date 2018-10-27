//
//  Size.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 27/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation

struct Size {
    var price: String
    var size: String
    
    static func loadSampleSizes() -> [Size]{
        let size = Size(price: "1.00 USD", size: "350 [ml]")
        let size1 = Size(price: "4.00 USD", size: "1.20 [L]")
        let size2 = Size(price: "12.50 USD", size: "5.00 [L]")
        
        return [size, size1, size2]
    }
}
