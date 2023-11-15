//
//  LoginView.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 29/10/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @StateObject var loginViewModel = LoginViewModel()
    
    let goMenu: () -> Void
    
    var body: some View {
        VStack (alignment: .center) {
            Spacer().frame(height: 48)
            
            Text("Pokedex").font(.largeTitle)
            
            Spacer()
            
            VStack(spacing: 0) {
                TextField(text: $loginViewModel.email) {
                    Text("Correo electrónico")
                }.multilineTextAlignment(.center)
                    .keyboardType(.emailAddress)
                    .padding()
                    .font(.title3)
                    .textInputAutocapitalization(.never)
                
                Divider()
            }
            
            Spacer()
            
            Button {
                loginViewModel.setCurrentUser()
                goMenu()
                print("Hola")
                
            } label: {
                Text("Acceder")
            }
        }.onAppear {
            loginViewModel.getCurrentUser()
            
            if (loginViewModel.email != "") {
                goMenu()
            }
        }
        
        .padding()
            .alert(isPresented : $loginViewModel.showAlert){
                Alert(
                title: Text("Oops!"),
                message: Text(loginViewModel.messageAlert)
            )}
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView{
            ()
        }
    }
}
