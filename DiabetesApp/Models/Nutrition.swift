//
//  Nutrition.swift
//  DiabetesApp
//
//  Created by José Miguel Guerrero Jiménez on 27/01/26.
//

import Foundation

struct Nutrition: Codable, Identifiable {
    let id = UUID()
    
    let name: String
    let calories: Double
    let carbohydrates: Double
    let sugars: Double
    let protein: Double
    let fat: Double
    let fiber: Double?
    let sodium: Double?
    
    enum CodingKeys: String, CodingKey {
        case name
        case calories
        case carbohydrates
        case sugars
        case protein
        case fat
        case fiber
        case sodium
    }
}
