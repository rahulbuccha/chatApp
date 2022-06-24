//
//  FirebaseAuthManager.swift
//  AapnaConnect
//
//  Created by Admin on 24/06/22.
//

import FirebaseAuth
import Foundation
import UIKit
class FirebaseAuthManager {
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if let user = authResult?.user {
                print(user)
                completionBlock(true)
            } else {
                completionBlock(false)
            }
        }
    }
    
//    func signIn(email: String, pass: String, completionBlock: @escaping (_ success: Bool) -> Void) {
//        Auth.auth().signIn(withEmail: email, password: pass) { (authResult, error) in
//            if let error = error, let rawValue = AuthErrorCode(rawValue: error.code) {
//                completionBlock(false)
//            } else {
//                completionBlock(true)
//            }
//        }
//    }
    func signIn(email: String, pass: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: pass) { (authResult, error) in
      if let error = error as? NSError {
            print("Error: \(error.localizedDescription)")
        }
        else  {
        print("User signs in successfully")
        let userInfo = Auth.auth().currentUser
        let email = userInfo?.email
      }
        }
    
    }

}
