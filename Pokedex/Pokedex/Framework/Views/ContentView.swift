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
        NavigationView {
            List(content_view_model.pokemon_list) { pokemonBase in
                NavigationLink {
                    PokemonDetailView(pokemonBase: pokemonBase)
                    
                } label: {
                    HStack {
                        WebImage(url: URL(string: pokemonBase.perfil?.sprites.front_default ?? ""))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48, alignment: .center)
                        Text(pokemonBase.pokemon.name)
                    }
                }
            }
        }.onAppear {
            Task{
                await content_view_model.get_pokemon_list()
            }
            
        }
        
    }
}


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
