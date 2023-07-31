//
//  PokemonDetailViewController.swift
//  MVCExample
//
//  Created by OITD on 29/07/23.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var pkmImageView: UIImageView!
    var recivedPokemon: Pokemon?
    @IBOutlet var abilityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = recivedPokemon?.name
        pkmImageView.image = UIImage(named: recivedPokemon!.image)
        abilityLabel.text = recivedPokemon?.ability
    }

}
