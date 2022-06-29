//
//  MessageViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit


class MessageViewController: UIViewController {

    @IBOutlet weak var txtField : NSLayoutConstraint!
    @IBOutlet weak var stackOutlet: UIStackView!
    @IBOutlet weak var btnOutlet: UIButton!
    
    var term = "Just Checking"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.navigationItem.hidesBackButton = true
        title = term
//
//        NotificationCenter.default.addObserver(self, selector: #selector(MessageViewController.keyboardWillShowNotification));, name: NSNotification.Name.UIKeybordWillShow, object: nil)
       
    }
  
}


