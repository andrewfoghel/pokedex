//
//  PokeCell.swift
//  pokedex
//
//  Created by Andrew Foghel on 3/4/17.
//  Copyright © 2017 Andrew Foghel. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    //data type of type pokemon
    var pokemon: Pokemon!
    
    //rounded corners 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    //func that will when we are ready to update info
    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
    
    
    
    
}
