//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 09/10/23.
//

import Foundation

struct Api {
    static let base: String = "https://pokeapi.co/api/v2/"
    
    struct route {
        static let pokemon: String = "/pokemon"
    }
    
}

protocol PokemonAPIProtocol {
    
    // https://pokeapi.co/api/v2/pokemon?limit=1279
    func get_pokemon_list (limit: Int) async -> Pokedex?
    
    // https://pokeapi.co/api/v2/pokemon/11/
    func get_pokemon_info (number_pokemon: Int) async -> Perfil?
    
}

class PokemonRepository: PokemonAPIProtocol {
    static let shared = PokemonRepository()
    
    let n_service: NetWorkAPIService
    init(n_service: NetWorkAPIService = NetWorkAPIService.shared){
        self.n_service = n_service
    }
    
    func get_pokemon_list(limit: Int) async -> Pokedex? {
        return await n_service.getPokedex(url: URL(string: "\(Api.base)\(Api.route.pokemon)")!, limit: limit)
    }
    
    func get_pokemon_info(number_pokemon: Int) async -> Perfil? {
        return await n_service.get_pokemon_info(url: URL(string: "\(Api.base)\(Api.route.pokemon)/\(number_pokemon)")!)
    }
}

