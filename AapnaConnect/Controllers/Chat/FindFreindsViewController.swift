//
//  FindFreindsViewController.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.

import UIKit

class FindFreindsViewController: UIViewController {

    @IBOutlet weak var searchBar : UISearchBar!
    @IBOutlet weak var findFriendView: UITableView!
    
    let findfriends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    var filterData : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterData = findfriends
        findFriendView.delegate = self
        findFriendView.dataSource = self
        findFriendView.allowsSelection = false
        findFriendView.separatorStyle = .none
        searchBar.delegate = self
    }

}

extension FindFreindsViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = findFriendView.dequeueReusableCell(withIdentifier: "customCells") as! FindFriendCustomTableViewCell
        let friend = filterData[indexPath.row]
        cell.userImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
}

extension FindFreindsViewController : UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterData = []
        if searchText == ""
        {
            filterData = []
        }
        
        for word in findfriends{
            if word.uppercased().contains(searchText.uppercased()){
                filterData.append(word)
            }
        }
        self.findFriendView.reloadData()
    }
}
