//
//  MenuItem.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

struct AppetizersDataResponse: Decodable {
    let request: [MenuItem]
}

struct MenuItem: Decodable {
    let calories: Int
    let description: String
    let protein: Int
    let name: String
    let id: Int
    let imageURL: String
    let price: Double
    let carbs: Int
}
