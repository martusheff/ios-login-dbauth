//
//  AccountCreationView.swift
//  ios-login-dbauth
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI

class AccountCreationViewModel: ObservableObject {
    
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
    
    func login(){
        pageNumber = 1
    }
    
}
