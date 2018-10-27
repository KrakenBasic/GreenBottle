//
//  BeerDetailViewController.swift
//  GreenBottle
//
//  Created by Fernando De La Rosa on 10/20/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class BeerDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var beer: Beer?
    
    @IBOutlet weak var imageBeer: UIImageView!
    @IBOutlet weak var nameBeer: UILabel!
    @IBOutlet weak var sloganBeer: UILabel!
    @IBOutlet weak var descriptionBeer: UITextView!
    
    
    
    @IBOutlet weak var priceTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBeer.image = UIImage(named: "beer")
        nameBeer.text = beer?.name
        sloganBeer.text = beer?.slogan
        //descriptionBeer
    }
    
    // MARK: Price Table View
    func numberOfSections(in priceTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ priceTableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(72.0)
    }
    
    func tableView(_ priceTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ priceTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = priceTableView.dequeueReusableCell(withIdentifier: "PriceDetailBeer") as? BeerDetailPriceTableViewCell else {
            fatalError("Could not dequeue a cell.")
        }
        
        cell.price.text = "1.00 USD"
        cell.size.text = "350 [ml]"
        cell.quantity.text = "1"
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
