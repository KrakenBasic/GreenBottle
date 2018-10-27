//
//  Beer.swift
//  GreenBottle
//
//  Created by DelaRosa Fernando on 20/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation

struct Beer: Decodable {
    let id: Int
    let busnessId: Int
    let name: String
    let description: DescriptionBeer
    let style: Style
}

struct DescriptionBeer: Codable {
    let type: String
    let category: String
    let description: String
    let create: Date
    let update: Date
}

struct Style: Codable {
    let styleName: String
    let abv: Double
    let ibu: Int?
    let organic: Bool
    let labelURLString: String?
    
    var labelURL: URL? {
        guard let url = labelURLString else { return nil }
        return URL(string: url)
    }
}


