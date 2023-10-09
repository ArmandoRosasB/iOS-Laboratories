//
//  ContentView.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 06/10/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @State var pokemon_list = [PokemonBase]()
    var body: some View {
        List(pokemon_list) { PokemonBase in
            HStack {
                WebImage(url: URL(string: PokemonBase.perfil.sprites.front_default))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                Text(PokemonBase.pokemon.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let pokemon = Pokemon(name: "bulbasaur", url: "")
        
        let pokemon2 = Pokemon(name: "charmander", url: "")
        let pokemon3 = Pokemon(name: "squirtle", url: "")
        
        let perfil = Perfil(sprites: Sprite(front_default: "https://static.wikia.nocookie.net/videojuego/images/4/43/Bulbasaur.png/revision/latest?cb=20110113231911", back_default: ""))
        let perfil2 = Perfil(sprites: Sprite(front_default: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png", back_default: ""))
        let perfil3 = Perfil(sprites: Sprite(front_default: "https://images.wikidexcdn.net/mwuploads/wikidex/thumb/e/e3/latest/20160309230820/Squirtle.png/800px-Squirtle.png", back_default: ""))

        let pokemonBase = PokemonBase(id: 1, pokemon: pokemon, perfil: perfil)
        let pokemonBase2 = PokemonBase(id: 2, pokemon: pokemon2, perfil: perfil2)
        let pokemonBase3 = PokemonBase(id: 3, pokemon: pokemon3, perfil: perfil3)

        let pokemon_list : [PokemonBase] = [pokemonBase, pokemonBase2, pokemonBase3]

        ContentView(pokemon_list: pokemon_list)
    }
    
}
