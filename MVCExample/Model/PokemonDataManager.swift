//
//  PokemonDataManager.swift
//  MVCExample
//
//  Created by OITD on 29/07/23.
//

import Foundation


class PokemonDataManager{
    // DataSource
    let pokemonsArray = [
        ["image":"0", "name": "Wartortle", "ability": "Torrent"],
        ["image":"1", "name": "Bulbasaur", "ability": "Overgrow"],
        ["image":"2", "name": "Blastoise", "ability": "Rain Dish"],
        ["image":"3", "name":"Butterfree", "ability": "Compound Eyes"],
        ["image":"4", "name":"Ivysaur", "ability": "Chlorophyll"],
        ["image":"5", "name":"Jigglypuf", "ability": "Cute Charm"],
        ["image":"6", "name":"Charmander", "ability": "Blaze"],
        ["image":"7", "name":"Meowth", "ability": "Pickup"],
        ["image":"8", "name":"Alacazam", "ability": "Alacazam"],
        ["image":"9", "name":"Pidgey", "ability": "Keen Eye"],
        ["image":"10", "name":"Raichu", "ability": "Static"],
        ["image":"11", "name":"Rattata", "ability": "Run Away"],
        ["image":"12", "name":"Vaporeon", "ability": "Water Absorb"],
        ["image":"13", "name":"Jynx", "ability": "Oblivious"],
        ["image":"14", "name":"Venusaur", "ability": "Chlorophyll"],
        ["image":"15", "name":"Vulpix", "ability": "Flash Fire"],
        ["image":"16", "name":"Slowbro", "ability": "Own Tempo"],
        ["image":"17", "name":"Dewgong", "ability": "Thick Fat"],
        ["image":"18", "name":"Spearow", "ability": "Sniper"],
        ["image":"19", "name":"Wigglytuff", "ability": "Competitive"],
        ["image":"20", "name":"Scyther", "ability": "Swarm"],
        ["image":"21", "name":"Golduck", "ability": "Damp"],
        ["image":"22", "name":"Lapras", "ability": "Shell Armor"],
        ["image":"23", "name":"Sandshrew", "ability": "Sand Veil"]
    ]
    
    private var pokemons : [Pokemon] = []

    func fetch(){
        for pokemon in pokemonsArray{
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index: Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        return pokemons.count
    }
}
