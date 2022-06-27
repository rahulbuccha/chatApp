//
//  ChatViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableView = UITableView()
    private let data : [appUser] = [
        appUser(name: "Rahul", email: "rshaw@gmail.com"),
        appUser(name: "Ram", email: "ram@gmail.com"),
        appUser(name: "Rohan", email: "rohan@gmail.com"),
        appUser(name: "Raju", email: "raju@gmail.com")
    ]
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
      
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let userData = data[indexPath.row]
        
        }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = data[indexPath.row].name
            
            let image : UIImage = UIImage(named: "rahul")!
            cell.imageView?.image = image
            cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.height)! / 10
                //cell.imageView?.image = image
            return cell
        }
    

}
