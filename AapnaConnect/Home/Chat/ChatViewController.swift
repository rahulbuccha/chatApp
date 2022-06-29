//
//  ChatViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit

class ChatViewController: UIViewController{

    //Outlet of the tableview
    @IBOutlet weak var friendView : UITableView!
    
    // creating static variable to pass in tableViewCell
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Delegates and some styling for tableViewCell
        friendView.delegate = self
        friendView.dataSource =  self
        //friendView.allowsSelection = false
        friendView.separatorStyle = .none
        
    }
    
}

//MARK: Creating extension viewControllers for table view
extension ChatViewController : UITableViewDelegate, UITableViewDataSource{
    
    // for Creating height for the tableView as it's custom TableViewCell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //For counting no. of rows to be printed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    //creating what to be printed on tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = friendView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCellTableViewCell
        let friend = friends[indexPath.row]
        cell.avatarImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    //for onClick Display for the next controllers
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell =  friends[indexPath.row]
        performSegue(withIdentifier: "message", sender: cell)
        
    }
    
    // performing segue b/w two controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageViewController
        let selectedTerm = sender as! String
        vc.term = selectedTerm

    }
    
}

