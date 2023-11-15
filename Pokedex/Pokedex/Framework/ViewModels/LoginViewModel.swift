//
//  LoginViewModel.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 30/10/23.
//

import Foundation

class LoginViewModel : ObservableObject {
    @Published var email = ""
    @Published var messageAlert = ""
    @Published var showAlert = false
    
    var userRequirement : UserRequirementProtocol
    
    init (userRequirement : UserRequirementProtocol = UserRequirement.shared) {
        self.userRequirement = userRequirement
    }
    
    @MainActor
    func setCurrentUser() {
        if (self.email != "") {
            self.userRequirement.setCurrentUser(email: email)
        } else {
            self.messageAlert = "Coreo inválido"
            self.showAlert = true
        }
    }
    
    @MainActor
    func getCurrentUser() {
        self.email = self.userRequirement.getCurrentUser() ?? ""
    }
    
}
