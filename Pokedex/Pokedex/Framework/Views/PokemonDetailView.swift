//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 30/10/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonDetailView: View {
    var pokemonBase: PokemonBase
    var body: some View {
        WebImage(url: URL(string: pokemonBase.perfil?.sprites.front_default ?? ""))
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250, alignment: .center)
        
        Text(pokemonBase.pokemon.name).font(.title)
        
    }
}

