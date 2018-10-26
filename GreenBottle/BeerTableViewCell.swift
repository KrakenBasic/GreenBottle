//
//  BeerTableViewCell.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

protocol BeerCellDelegate {
    func checkMarkTapped(_ sender: BeerTableViewCell)
}

class BeerTableViewCell: UITableViewCell {
    
    var delegate: BeerCellDelegate?
    
    
    @IBOutlet weak var imageBeer: UIImageView!
    @IBOutlet weak var nameBeer: UILabel!
    @IBOutlet weak var sloganBeer: UILabel!
    @IBOutlet weak var porcentBeer: UILabel!


}
