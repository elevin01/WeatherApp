//
//   WeatherModel.swift
//  WeatherApp
//
//  Created by Emil Thomas Levin on 6/10/23.
//

import Foundation

struct WeatherModel: Decodable {
    let temperature: Double
    let description: String
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case description
    }
}

