//
//  PokemonViewController.swift
//  MVCExample
//
//  Created by OITD on 29/07/23.
//

import UIKit

class PokemonViewController: UIViewController{
    @IBOutlet var pokemonTable: UITableView!
    
    let dataManager = PokemonDataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataManager.fetch()
        print(dataManager.countPokemons())
        
        var i = 0
        while i < dataManager.countPokemons(){
            print(dataManager.getPokemon(at: i))
            i+=1
        }
    }
    
    

}

extension PokemonViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonTableViewCell
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        cell.pokemonLabel.text = pokemon.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemons"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(60.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected: ", indexPath.row)
        
        performSegue(withIdentifier: "detail_segue", sender: dataManager.getPokemon(at: indexPath.row))
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        
        destination.recivedPokemon = sender as? Pokemon
    }
}
