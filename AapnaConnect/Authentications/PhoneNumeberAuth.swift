//
//  PhoneNumeberAuth.swift
//  AapnaConnect

//  Created by Admin on 21/06/22.

import Foundation
import FirebaseAuth

class AuthManager{
    static let shared = AuthManager()
    
    private let auth = Auth.auth()
    
    private var verificationId : String?
    
    private func startAuth(phoneNumber : String, completion : @escaping (Bool) -> Void){
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) {[weak self] verificationId, error in
            guard let verificationId = verificationId, error == nil else{
                completion(false)

                return
            }
            self?.verificationId = verificationId
            completion(true)
        }
    }
    private func verifyCode(smsCode : String, completion : @escaping (Bool) -> Void){
        guard let verificationId = verificationId else {
            completion(false)
            return
        }

        let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationId, verificationCode: smsCode)
        
        auth.signIn(with: credential) { result, error in
            guard result != nil, error == nil else{
                completion(false)
                return
            }
            completion(true)
        }
    }
    
}




