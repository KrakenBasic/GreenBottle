//
//  Beer.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation

struct Beer{
    var name: String
    var slogan: String
    var porcent: String
    var info: String
    
    static func loadSampleBeers() ->[Beer]{
        let beer = Beer(name: "Indio", slogan: "Orgullosamente Indio", porcent: "90", info: "Lorem.....")
        let beer2 = Beer(name: "Carta Blanca", slogan: "La mejor desde los 50's", porcent: "75", info: "Lorem....")
        let beer3 = Beer(name: "Modelo", slogan: "La cerveza obscura de México", porcent: "40", info: "Lorem.....")
        
        return [beer, beer2, beer3]
    }
}
