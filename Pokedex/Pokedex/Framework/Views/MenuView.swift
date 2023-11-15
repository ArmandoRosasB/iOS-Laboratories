//
//  MenuView.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 30/10/23.
//

import SwiftUI

struct MenuView: View {
    let goRoot: () -> Void
    
    var body: some View {
        TabView {
            ContentView().tabItem {
                Image(systemName: "house")
                Text("Pokedex")
            }
            PerfilView(goRoot: goRoot).tabItem {
                Image(systemName: "person")
                Text("Perfil")
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView {
            ()
        }
    }
}
