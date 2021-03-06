//
//  LoginViewController.swift
//  AapnaConnect
//
//  Created by Admin on 22/06/22.
//

import UIKit
//import FirebaseAuth

class LoginViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // design buttons
        submitButton.layer.cornerRadius = submitButton.frame.size.height / 2
        self.submitButton.setRadiusWithShadow(20.0)
        
        //MARK: Tap gesture for keyboard
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
         view.addGestureRecognizer(tapGesture)
    }
    
    //MARK: Login Button Tapped and Function
    @IBAction func loginTapped(_ sender: Any) {
        //didTapLoginButton()
        //checkCurrentUser()
    }

    @objc func didTapLoginButton() {
        let loginManager = FirebaseAuthManager()
        guard let email = emailOutlet.text, let password = passwordOutlet.text else { return }
        loginManager.signIn(email: email, pass: password) {[weak self] (success) in
            guard let `self` = self else { return }
            var message: String = ""
            if (success) {
                message = "User was sucessfully logged in."
            } else {
                message = "There was an error."
            }
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alertController, animated: true)
        }
    }
    
//    func checkCurrentUser(){
//        if (Auth.auth().currentUser == nil){
//            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChatViewController"){
//                self.navigationController?.present(vc, animated: true, completion: nil)
//            }
//        }
//    }
    
    func logout(){
        
    }
}
