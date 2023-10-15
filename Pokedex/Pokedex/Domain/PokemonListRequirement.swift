//
//  PokemonListRequirement.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 15/10/23.
//

import Foundation

protocol PokemonListRequirementProtocol {
    func get_pokemon_list(limit: Int) async -> Pokedex?
    
}

class PokemonListRequirement: PokemonListRequirementProtocol {
    
    static let shared = PokemonListRequirement()
    
    let data_repository: PokemonRepository
    
    init(data_repository: PokemonRepository = PokemonRepository.shared) {
        self.data_repository = data_repository
    }
    
    func get_pokemon_list(limit: Int) async -> Pokedex? {
        return await data_repository.get_pokemon_list(limit: limit)
    }
}
