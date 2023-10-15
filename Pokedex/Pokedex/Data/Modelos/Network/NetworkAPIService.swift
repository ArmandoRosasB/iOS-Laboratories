//
//  NetworkAPIService.swift
//  Pokedex
//
//  Created by Armando Rosas Balderas on 09/10/23.
//

import Foundation
import Alamofire

class NetWorkAPIService {
    static let shared = NetWorkAPIService()
    
    func getPokedex(url: URL, limit:Int)async -> Pokedex? {
        let parameters : Parameters = [ // Establecemos los parametros para el request
            "limit" : limit
        ]
        
        // Hacer el request y validar que haya sido exitoso
        let task_request = AF.request(url, method: .get, parameters: parameters).validate()
        
        // Guardar la respuesta
        let response = await task_request.serializingData().response
        
        switch response.result {
        case let .success(data):
            do {
                return try JSONDecoder().decode(Pokedex.self, from: data)
            } catch {
                return nil
            }
        case let .failure(error):
            debugPrint(error.localizedDescription)
            return nil
            
        }
    }
    
    func get_pokemon_info(url: URL) async -> Perfil?{
        let task_request = AF.request(url, method: .get).validate()
        let response = await task_request.serializingData().response
        
        switch response.result {
        case let .success(data):
            do {
                return try JSONDecoder().decode(Perfil.self, from: data)
            } catch {
                return nil
            }
        case let .failure(error):
            debugPrint(error.localizedDescription)
            return nil
        }
    }
}

