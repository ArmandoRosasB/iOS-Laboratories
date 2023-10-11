//
//  PokemonAPIProtocol.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 09/10/23.
//

import Foundation

protocol PokemonAPIProtocol {
    
    // https://pokeapi.co/api/v2/pokemon?limit=1279
    func get_pokemon_list (limit: Int) async -> Pokedex?
    
    // https://pokeapi.co/api/v2/pokemon/11/
    func get_pokemon_info (number_pokemon: Int) async -> Perfil?
    
}
