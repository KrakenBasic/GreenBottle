//
//  BeerCell.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

protocol BeerCellDelegate {
    func checkMarkTapped(_ sender: BeerCell)
}

class BeerCell: UITableViewCell {
    var delegate: BeerCellDelegate?
    
    
}
