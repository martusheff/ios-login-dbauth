//
//  Register.swift
//  ios-login-dbauth
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI

struct Register: View {
    @EnvironmentObject var accountCreation: AccountCreationViewModel
    var body: some View {
        
        VStack {
            Text("Create Account")
                .font(.largeTitle)
                .foregroundColor(.black)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 25)
            
            HStack(spacing: 15) {
                Image(systemName: "person.fill")
                    .foregroundColor(.red)
                TextField("Name", text: $accountCreation.name)
            }
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
                    .padding(.vertical)
            
            HStack(spacing: 15){
                HStack(spacing: 15){
                        TextField("Location", text: $accountCreation.location)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "mappin.circle.fill")
                                .foregroundColor(.red)                        })}
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
                
                TextField("Age", text: $accountCreation.age)
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .frame(width: 80)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
                }
                TextEditor(text: $accountCreation.bio)
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
                    .padding(.vertical)
                
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Spacer(minLength: 0)
                    Text("Register")
                    Spacer(minLength: 0)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(Color.red)
                .cornerRadius(10)
                
            })
            }
        .padding(.horizontal)
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
