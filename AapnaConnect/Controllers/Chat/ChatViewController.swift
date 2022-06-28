//
//  ChatViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit

class ChatViewController: UIViewController{

    @IBOutlet weak var friendView : UITableView!
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    override func viewDidLoad() {
        super.viewDidLoad()
    
        friendView.delegate = self
        friendView.dataSource =  self
        friendView.allowsSelection = false
        friendView.separatorStyle = .none
        
    }
    
}

extension ChatViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = friendView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCellTableViewCell
        let friend = friends[indexPath.row]
        cell.avatarImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell =  friends[indexPath.row]
        performSegue(withIdentifier: "passData", sender: cell)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageViewController
        let cell = sender as! String
        vc.term = cell
    }
    
    
    
}

