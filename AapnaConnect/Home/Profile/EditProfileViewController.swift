//
//  EditProfileViewController.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    //Creating static Varible
    let friend = ["hacker"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //passing delegates
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
    }
    
}

//MARK: Creating extension viewControllers for table view
extension EditProfileViewController : UITableViewDelegate, UITableViewDataSource{
    
    // for Creating height for the tableView as it's custom TableViewCell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700
    }
    
    //For counting no. of rows to be printed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friend.count
    }
    
    //creating what to be printed on tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "edit") as! EditProfileTableViewCell
        
        let friends = friend[indexPath.row]
        cell.editImageView.image = UIImage(named: friends)
//        cell.userNameLbl.text = friends
//        cell.userTxtField.text = friends
//        cell.emailLbl.text = friends
//        cell.emailTxtField.text = friends
//        cell.phoneLbl.text = friends
//        cell.phoneTxtField.text = friends
        
        return cell
    }
   
}
