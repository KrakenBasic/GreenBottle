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
    var qty: Int = 0
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var quantity: UILabel!
    @IBOutlet weak var addButtonBeer: UIButton!
    @IBOutlet weak var restButtonBerr: UIButton!
    
    @IBAction func addBeer(_ sender: UIButton) {
        if qty < 99 {
            qty = qty + 1
        }
        quantity.text = String(qty)
    }
    @IBAction func restBeer(_ sender: UIButton) {
        if qty > 0 {
            qty = qty - 1
        }
        quantity.text = String(qty)
    }
    
}
