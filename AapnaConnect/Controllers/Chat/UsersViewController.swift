//
//  UsersViewController.swift
//  AapnaConnect
//
//  Created by Admin on 26/06/22.
//

import UIKit

class UsersViewController: UITabBarController, UITableViewDataSource, UITableViewDelegate  {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    func setupTableView() {
            view.addSubview(tableView)
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            tableView.allowsSelection = true
            tableView.isUserInteractionEnabled = true
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            return cell
        }

}
