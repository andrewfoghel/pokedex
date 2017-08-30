//
//  pokemon.swift
//  pokedex
//
//  Created by Andrew Foghel on 3/4/17.
//  Copyright © 2017 Andrew Foghel. All rights reserved.
//

import Foundation

//pokemon class
class Pokemon {
    
    //vars
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    private var _pokemonURL: String!
    //getters
    var name: String{
        return _name
    }
    
    var pokedexId: Int{
        return _pokedexId
    }
    
    //initializer 
    init(name: String, pokedexID: Int){
        self._name = name
        self._pokedexId = pokedexID
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)"
    }
    
    func downloadPokemonDetail(){
        //network calls are asyncronis so we don't know when they are finished loaded
    }
    
}
