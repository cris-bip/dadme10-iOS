//
//  PokemonTableViewCell.swift
//  MVCExample
//
//  Created by OITD on 29/07/23.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    @IBOutlet var pokemonImage: UIImageView!
    @IBOutlet var pokemonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
