//
//  EditProfileViewController.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    let friend = ["hacker"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }
    
}
extension EditProfileViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friend.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "edit") as! EditProfileTableViewCell
        
        let friends = friend[indexPath.row]
        cell.editImageView.image = UIImage(named: friends)
        cell.userNameLbl.text = friends
        cell.userTxtField.text = friends
        cell.emailLbl.text = friends
        cell.emailTxtField.text = friends
        cell.phoneLbl.text = friends
        cell.phoneTxtField.text = friends
        
        return cell
    }
   
}
