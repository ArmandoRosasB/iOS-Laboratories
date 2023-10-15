//
//  PokemonInfoRequirement.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 15/10/23.
//

import Foundation

protocol PokemonInfoRequirementProtocol {
    func get_pokemon_info(number_pokemon: Int) async -> Perfil?
}

class PokemonInfoRequirement : PokemonInfoRequirementProtocol {
    
    static let shared = PokemonInfoRequirement()
    
    let data_repository: PokemonRepository
    
    init(data_repository: PokemonRepository = PokemonRepository.shared){
        self.data_repository = data_repository
    }
    
    func get_pokemon_info(number_pokemon: Int) async -> Perfil? {
        return await data_repository.get_pokemon_info(number_pokemon: number_pokemon)
    }
}
