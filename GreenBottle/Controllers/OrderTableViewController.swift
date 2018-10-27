//
//  OrderTableViewController.swift
//  GreenBottle
//
//  Created by Alexis Celestino Solís on 10/20/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class OrderTableViewController: UITableViewController {
    
    let price: Int = 1500

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }


    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    @IBAction func confirmation(_ sender: UIBarButtonItem) {
        if User.shared.isLogin {
            let alert = UIAlertController(title: "Confirm Order", message: "You order of \(price) is ready. Continue?", preferredStyle: .alert)
            let yesButton = UIAlertAction(title: "Yes", style: .default) { (action) in
                self.success()
            }
            let noButton = UIAlertAction(title: "No", style: .cancel, handler: nil)
            alert.addAction(yesButton)
            alert.addAction(noButton)
            present(alert, animated: true)
        } else {
            let loginStoryboard = AppStoryboard.Login.instance
            let loginScene = loginStoryboard.instantiateViewController(withIdentifier: "Login") as! UINavigationController
            present(loginScene, animated: true, completion: nil)
        }
    }
    
    func success () {
        let alert = UIAlertController(title: "Succes!", message: "Your beer is comming", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            let mainStoryboard = AppStoryboard.Main.instance
            let mainScene = mainStoryboard.instantiateViewController(withIdentifier: "Main") as! UITabBarController
            self.present(mainScene, animated: true, completion: nil)
        }
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}
