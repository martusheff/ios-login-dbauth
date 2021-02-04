//
//  MainView.swift
//  ios-login-dbauth
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var accountCreation: AccountCreationViewModel
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        VStack{
            Image("dating")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: UIScreen.main.bounds.height / 3.5)
                .padding(.vertical)
            
            ZStack {
                // Login view
                if accountCreation.pageNumber == 0 {
                    ImageRegister()
                } else if accountCreation.pageNumber == 1{
                    Register()
                        .transition(.move(edge: .trailing))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.clipShape(CustomCorner(corners: [.topLeft,.topRight])).ignoresSafeArea(.all, edges: .bottom))
        }
        .background(Color(.systemRed).ignoresSafeArea(.all, edges: .all))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
