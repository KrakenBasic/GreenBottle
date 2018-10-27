//
//  PaymentMethodsViewController.swift
//  GreenBottle
//
//  Created by Ernesto Mejia on 27/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class PaymentMethodsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var paymentTable: UITableView!
    
    var methods = [String]()
    var objects = [Any]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return methods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = paymentTable.dequeueReusableCell(withIdentifier: "MethodID") else {
            fatalError("Could not dequeue a cell")
        }
        print(indexPath.row)
        let method = methods[indexPath.row]
        cell.textLabel?.text = method
        return cell
    }
    
    
    @IBAction func addingPaymentMethod(_ sender: Any) {
        methods.append("Payment Method")
        paymentTable.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    


}
