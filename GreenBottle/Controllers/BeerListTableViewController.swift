//
//  BeerListTableViewController.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class BeerListTableViewController: UITableViewController {

    var beers = [Beer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beers = Beer.loadSampleBeers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(107.0)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BeerCellIdentifier") as? BeerTableViewCell else {
            fatalError("Could not dequeue a cell.")
        }
        let beer = beers[indexPath.row]
        cell.imageBeer.image = UIImage(named: "beer")
        cell.nameBeer.text = beer.name
        cell.sloganBeer.text = beer.slogan
        cell.porcentBeer.text = "Porcent" //beer.porcent
        cell.barPorcentBeer.totalPorcent = Int(beer.porcent)!
        return cell
    }
    
    //MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let beerDetailViewController = segue.destination as! BeerDetailViewController
        let indexPath = tableView.indexPathForSelectedRow!
        let selectedBeer = beers[indexPath.row]
        
        beerDetailViewController.beer = selectedBeer
    }

}
