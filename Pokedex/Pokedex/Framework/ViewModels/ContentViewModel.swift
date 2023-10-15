//
//  ContentViewModel.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 14/10/23.
//

import Foundation

class ContentViewModel : ObservableObject { // Patron de diseño observer
    @Published var pokemon_list = [PokemonBase]() // Notificar cambios al ContentView
    
    var pokemon_list_requirement: PokemonListRequirementProtocol
    var pokemon_info_requirement: PokemonInfoRequirementProtocol
    
    init(pokemon_list_requirement: PokemonListRequirementProtocol = PokemonListRequirement.shared, pokemon_info_requirement: PokemonInfoRequirementProtocol = PokemonInfoRequirement.shared) {
        self.pokemon_list_requirement = pokemon_list_requirement
        self.pokemon_info_requirement = pokemon_info_requirement
    }
    
    @MainActor
    func get_pokemon_list() async {
        
        let result = await pokemon_list_requirement.get_pokemon_list(limit: 1279)
        
        for i in 0...result!.results.count - 1 {
            let number_pokemon = Int(result!.results[i].url.split(separator:"/")[5])!
            let perfil_pokemon = await pokemon_info_requirement.get_pokemon_info(number_pokemon: Int(String(number_pokemon))!)
            
            let temp_pokemon = PokemonBase(id: Int(String(number_pokemon))!, pokemon: result!.results[i], perfil: perfil_pokemon)
            
            self.pokemon_list.append(temp_pokemon)
        }
        
    }
}
