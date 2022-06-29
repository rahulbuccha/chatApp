//
//  MessageViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit


class MessageViewController: UIViewController {

    // Oulets
    @IBOutlet weak var messageView : UITableView!
    @IBOutlet weak var txtField : UITextField!
    @IBOutlet weak var stackOutlet: UIStackView!
    @IBOutlet weak var btnOutlet: UIButton!

    var term = "Just Checking"
    
    //Creating array to store value coming from textField
    var texts = [String]()
    
    //let texts = ["Hii", "Hello", "Works fine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Delgates
        title = term
        messageView.delegate = self
        messageView.dataSource = self
        messageView.separatorStyle = .none
        
        //For removing back button of tabBarController from viewController
        self.tabBarController?.navigationItem.hidesBackButton = true
       
    }
    
    //OnClick Tap function to send data of textField to variable then to the array
    @IBAction func sendTapped(_ sender: UIButton){
       let text = txtField.text!
        texts.append(text)
        
        //Always reload data after any changes to be printed on
        messageView.reloadData()
        txtField.text = ""
    }
}

//MARK: Creating extension viewControllers for table view
extension MessageViewController : UITableViewDelegate, UITableViewDataSource{
    
    // for Creating height for the tableView as it's custom TableViewCell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    //For counting no. of rows to be printed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    //creating what to be printed on tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messageView.dequeueReusableCell(withIdentifier: "messageCell") as! MessagesTableViewCell
        
        let texts = texts[indexPath.row]
        cell.txtLbl.text = texts
//        print(cell)
        
        
        return cell
    }
    
    
}

