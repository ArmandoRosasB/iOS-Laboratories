//
//  PerfilView.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 30/10/23.
//

import SwiftUI

struct PerfilView: View {
    @StateObject var perfilViewModel = PerfilViewModel()
    
    let goRoot: () -> Void
    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            Text(perfilViewModel.email)
            
            Button {
                perfilViewModel.logOut()
                goRoot()
            } label: {
                HStack(spacing: 16) {
                    Image(systemName: "power")
                    Text("Logout")
                }.foregroundColor(.red)
            }
        }.onAppear {
            perfilViewModel.getCurrentUser()
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView {
            ()
        }
    }
}
