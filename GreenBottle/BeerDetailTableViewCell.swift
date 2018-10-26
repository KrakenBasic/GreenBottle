//
//  BeerDetailTableViewCell.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 26/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

protocol BeerDetailCellDelegate {
    func checkMarkTapped(_ sender: BeerDetailTableViewCell)
}

class BeerDetailTableViewCell: UITableViewCell {
    
    var delegate: BeerDetailTableViewCell?
    
    
    
}
