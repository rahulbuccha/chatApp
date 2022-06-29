//
//  ListOfUserViewController.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit
import CoreMedia
//
//struct Group {
//    let title : String
//    let users : [String]
//}

 class ListOfUserViewController: UIViewController {

//    private let users : [String : [String]] = [
//        "A" : ["aman", "amaze"],
//        "D" : ["damn", "darren"],
//        "F" : ["faizal", "farzi"],
//        "J" : ["juhi", "juhu"],
//        "K" : ["kebab", "kamo"],
//        "Q" : ["queen", "quarintine"],
//        "M" : ["moon", "maybe"],
//        "O" : ["omam", "oggy"],
//        "x" : ["xavier", "xamy"],
//    ]
    
     let findfriends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
     
    private let alphabet = "abcdefghijklmnpqrstuvwxyz"
    
    
    //var models = [Group]()
    
     //@IBOutlet weak var findFriendView : UITableView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
//      setupData()
//        findFriendView.delegate = self
//        findFriendView.dataSource = self

    }
 
//    func setupData() {
//        for (key, value) in users{
//            models.append(Group(title: key, users: value))
//        }
//        models = models.sorted(by: {$0.title < $1.title})
//    }
     
}
//extension ListOfUserViewController : UITableViewDelegate, UITableViewDataSource{
//
//    // TableView
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return findfriends.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell  = findfriends.dequeueReusableCell(withIdentifier: "customCells") as! FindFriendCustomTableViewCell
//        let friend = findfriends[indexPath.row]
//        cell.findFriendImg.image = UIImage(named: friend)
//        cell.findFriendLbl.text = friend
//        //cell.accessoryType = .disclosureIndicator
//
//        return cell
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return models.count
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return models[section].users.count
//
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath)
//        cell.textLabel?.text = models[indexPath.section].users[indexPath.row]
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return models[section].title
//    }
//
//    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        return Array(alphabet.uppercased().shuffled().compactMap({ "\($0)" }))
//    }
//    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
//        guard let targetIndex = models.firstIndex(where: { $0.title == title}) else{
//            return 0
//        }
//        return targetIndex
//    }
    
//}





