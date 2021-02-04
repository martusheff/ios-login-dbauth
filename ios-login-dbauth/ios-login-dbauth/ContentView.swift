//
//  ContentView.swift
//  ios-login-dbauth
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var accountCreation = AccountCreationViewModel()
    var body: some View {
        MainView()
        // setting it as an environment object (available for use in all subviews)
            .environmentObject(accountCreation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
