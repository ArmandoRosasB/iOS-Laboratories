//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 06/10/23.
//

import SwiftUI

@main
struct PokedexApp: App { // App es un protocolo por lo que PokedexApp debe ser
                         // una clase que hereda lso metodos virtuales de App
    @Environment(\.scenePhase) var scenePhase // Lee los valores de ambiente de una vista
    
    var body: some Scene { // body regresa el contenido de la app como una escena
        WindowGroup { //Un tipo de escena utilizada
            CoordinatorView()
        }.onChange(of: scenePhase) { (newScenePhase) in
            switch newScenePhase {
            case .background:
                print("App State: Background")
                
            case .inactive:
                print("App State: Inactive")
                
            case .active:
                print("App State: Active")
                
            @unknown default:
                print("App State: Unknown")
            }
        }
    }
}
