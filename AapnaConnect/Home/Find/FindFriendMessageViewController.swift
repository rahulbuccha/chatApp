//
//  FindFriendMessageViewController.swift
//  AapnaConnect
//
//  Created by Admin on 29/06/22.
//

import UIKit

class FindFriendMessageViewController: UIViewController {

    var term = "Testing"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.navigationItem.hidesBackButton = true
        title = term
        // Do any additional setup after loading the view.
    }

}
