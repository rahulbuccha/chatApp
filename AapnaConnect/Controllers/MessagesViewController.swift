//
//  MessagesViewController.swift
//  AapnaConnect
//
//  Created by Admin on 21/06/22.
//

import UIKit
import CometChatPro

class MessagesViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        //Default users login
        let uid    = "SUPERHERO2"
        let authKey = "6b1643f334caf01a066449b92948c00ff7a6a79c"

        CometChat.login(UID: uid, apiKey: authKey, onSuccess: { (user) in
          print("Login successful: " + user.stringValue())
            self.openChat()
        }) { (error) in
          print("Login failed with error: " + error.errorDescription);
        }
    }
    
    func openChat(){
        DispatchQueue.main.async {
            let cometChatUI = CometChatUI()
            cometChatUI.setup(withStyle: .fullScreen)
            self.present(cometChatUI, animated: true, completion: nil)
        }
    }

}
