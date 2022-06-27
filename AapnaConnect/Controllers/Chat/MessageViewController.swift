////
////  MessageViewController.swift
////  AapnaConnect
////
////  Created by Admin on 27/06/22.
////
//
//import UIKit
//
//
//class MessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    
//    private let tableView : UITableView = {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        
//        return table
//    }()
//
//    private let items : [String]
//    
//    //init
//    init(items : [String]){
//        self.items = items
//        super.init(nibName : nil, bundle : nil)
//    }
//        required init?(coder: NSCoder) {
//            fatalError("init(coder:) has not been implemented")
//        }
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(tableView)
//        tableView.delegate = self
//        tableView.dataSource = self
//
//        // Do any additional setup after loading the view.
//    }
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        
//        tableView.frame = view.bounds
//    }
//   
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath)
//        cell.textLabel?.text = items[indexPath.row]
//        return cell
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        
//    }
//    
//    
//}