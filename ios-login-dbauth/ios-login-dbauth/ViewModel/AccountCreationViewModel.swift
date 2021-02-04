//
//  AccountCreationView.swift
//  ios-login-dbauth
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI
import Firebase
import CoreLocation

class AccountCreationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    // user details
    @Published var name = ""
    @Published var bio = ""
    @Published var age = ""
    @Published var location = ""
    
    // login details
    @Published var phNumber = ""
    @Published var code = ""
    
    // reference for view changing
    // ie. login to register to image upload
    
    @Published var pageNumber = 0
    
    // images...
    @Published var images = Array(repeating: Data(count:0), count: 4)
    @Published var picker = false
    
    //alert view
    @Published var alert = false
    @Published var alertMsg = ""
    
    //loading screen
    @Published var isLoading = false
    
    // OTP Credentials
    @Published var CODE = ""
    func login(){
        // getting OTP...
        // disabling APP verification
        
        Auth.auth().settings?.isAppVerificationDisabledForTesting = true
        
        PhoneAuthProvider.provider().verifyPhoneNumber("+" + code + phNumber, uiDelegate: nil) {(CODE,err) in
                if err != nil{
                self.alertMsg = err!.localizedDescription
                self.alert.toggle()
                return
            }
            self.CODE = CODE!
                //alert textfields
                
            let alertView = UIAlertController(title: "Verification", message: "Enter OTP Code", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            let ok = UIAlertAction(title: "Ok", style: .default) { (_) in
                //verifying OTP
                if let otp = alertView.textFields![0].text{
                    let credential = PhoneAuthProvider.provider().credential(withVerificationID: self.CODE, verificationCode: otp)
                    
                    Auth.auth().signIn(with: credential) { (res, err) in
                        if err != nil {
                            self.alertMsg = err!.localizedDescription
                            self.alert.toggle()
                            return
                        }
                    }
                }
            }
            alertView.addTextField { (txt) in
                txt.placeholder = "1234"
            }
            
            alertView.addAction(cancel)
            alertView.addAction(ok)
            
            // presenting
            UIApplication.shared.windows.first?.rootViewController?.present(alertView, animated: true, completion: nil)
        
        
    }
    
}
}
