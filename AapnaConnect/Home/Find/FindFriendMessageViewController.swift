//
//  FindFriendMessageViewController.swift
//  AapnaConnect
//
//  Created by Admin on 29/06/22.
//

import UIKit

class FindFriendMessageViewController: UIViewController {
    @IBOutlet weak var findTableView: UITableView!
    @IBOutlet weak var txtField : UITextField!
    @IBOutlet weak var stackOutlet: UIStackView!
    @IBOutlet weak var btnOutlet: UIButton!
    
    var term = "Testing"
    
    var texts = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        findTableView.delegate = self
        findTableView.dataSource = self
        findTableView.separatorStyle = .none
        
        self.tabBarController?.navigationItem.hidesBackButton = true
        title = term
        
    }
    
    //OnClick Tap function to send data of textField to variable then to the array
    @IBAction func sendTapped(_ sender: UIButton){
       let text = txtField.text!
        texts.append(text)
        
        //Always reload data after any changes to be printed on
        findTableView.reloadData()
        txtField.text = ""
    }

}

extension FindFriendMessageViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    // for Creating height for the tableView as it's custom TableViewCell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //For counting no. of rows to be printed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    //creating what to be printed on tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = findTableView.dequeueReusableCell(withIdentifier: "findCell") as! FindMessageTableViewCell
        
        let texts = texts[indexPath.row]
        cell.txtLbl.text = texts
//        print(cell)
        
        
        return cell
    }
}
