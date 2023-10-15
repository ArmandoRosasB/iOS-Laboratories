//
//  ContentView.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 06/10/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @StateObject var content_view_model = ContentViewModel()
    
    var body: some View {
        List(content_view_model.pokemon_list) { PokemonBase in
            HStack {
                WebImage(url: URL(string: PokemonBase.perfil?.sprites.front_default ?? ""))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                Text(PokemonBase.pokemon.name)
            }
        }.onAppear {
            Task{
                await content_view_model.get_pokemon_list()
            }
            
        }
        
    }
}

