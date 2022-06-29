//
//  FindFreindsViewController.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.

import UIKit

class FindFreindsViewController: UIViewController {

    //Outlets
    @IBOutlet weak var searchBar : UISearchBar!
    @IBOutlet weak var findFriendView: UITableView!
    
    //Some Static values created
    let findfriends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    // for the searching the values
    var filterData : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting the static values to the filteradata
        filterData = findfriends
        
        //delegates
        findFriendView.delegate = self
        findFriendView.dataSource = self
        
        //findFriendView.allowsSelection = false
        findFriendView.separatorStyle = .none
        searchBar.delegate = self
    }

}

//MARK: Creating extension viewControllers for table view
extension FindFreindsViewController : UITableViewDelegate, UITableViewDataSource{
    
    // for Creating height for the tableView as it's custom TableViewCell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //For counting no. of rows to be printed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    //creating what to be printed on tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = findFriendView.dequeueReusableCell(withIdentifier: "customCells") as! FindFriendCustomTableViewCell
        let friend = filterData[indexPath.row]
        cell.userImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
    //For Performing Segue to another controller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let cell =  findfriends[indexPath.row]
       performSegue(withIdentifier: "findFriend", sender: cell)
       
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let vc = segue.destination as! FindFriendMessageViewController
       let selectedTerm = sender as! String
       vc.term = selectedTerm

   }
    
}

// Extension for the SearchBar to filter elements
extension FindFreindsViewController : UISearchBarDelegate{
    
    // Function of searchBar working
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
