//
//  MainViewController.swift
//  FreeOTP
//
//  Created by Bucci on 06.12.2017.
//  Copyright © 2017 Fedora Project. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    fileprivate var store = TokenStore()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tokenCell", for: indexPath) as! TokenTableViewCell
        
        // Configure the cell...
        
        let token = store.load(indexPath.row)!
        
        cell.issuerLabel.text = token.issuer
        cell.accountLabel.text = token.label
         
        
        return cell
    }
}
