//
//  NutritionAPIService.swift
//  DiabetesApp
//
//  Created by José Miguel Guerrero Jiménez on 27/01/26.
//

import Foundation

final class NutritionAPIService {
    func fetchNutrition(for food: String) async throws -> Nutrition {
        let url = URL(string: "https://diabetes-app-backend-p8qtwje99-jose-miguels-projects-4169b721.vercel.app/food/search?query=\(food)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(Nutrition.self, from: data)
    }
}
