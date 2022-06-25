//
//  ViewController.swift
//  AapnaConnect
//
//  Created by Admin on 21/06/22.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {

    //Button Outlets
    @IBOutlet weak var verifyButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    //textfieldsOutlet
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var otpTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Design buttons
        submitButton.layer.cornerRadius = submitButton.frame.size.height / 2
        self.submitButton.setRadiusWithShadow(20.0)
        
        //MARK: Tap gesture for keyboard
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
         view.addGestureRecognizer(tapGesture)
        
    }
    
    //MARK: Register Button Tapped and Function
    @IBAction func registerTapped(_ sender: UIButton){
       didTapSignUpButton()
    }
    @objc func didTapSignUpButton() {
        let signUpManager = FirebaseAuthManager()
        if let email = numberTextField.text, let password = otpTextfield.text {
            signUpManager.createUser(email: email, password: password) {[weak self] (success) in
                guard let `self` = self else { return }
                var message: String = ""
                if (success) {
                    message = "User was sucessfully created."
                } else {
                    message = "There was an error."
                }
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alertController, animated: true)
            }
        }
    }

}

