//
//  TappedViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 23/03/22.
//

import UIKit

class TappedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableview: UITableView = {
        var tableview = UITableView()
        return tableview
    }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        tableview.frame = view.bounds
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "BottomCell")
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BottomCell")!
        cell.backgroundColor = .gray.withAlphaComponent(0.5)
        cell.textLabel?.text="Chorsu"
        
        return cell
    }
    
}

