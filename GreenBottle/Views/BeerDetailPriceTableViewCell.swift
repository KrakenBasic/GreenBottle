//
//  BeerDetailPriceTableViewCell.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 27/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

protocol PriceCellDelegate {
    func checkMarkTapped(_ sender: BeerDetailPriceTableViewCell)
}

class BeerDetailPriceTableViewCell: UITableViewCell {

    var delegate: PriceCellDelegate?

    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var quantity: UILabel!
    
}
