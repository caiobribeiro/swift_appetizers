//
//  Appetizer.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import Foundation

struct AppetizerModel: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let carbs: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [AppetizerModel]
}

enum MockData {
    static let sample01Appetizer = AppetizerModel(
        id: 1,
        name: "rango 01",
        description: "rango bao",
        price: 666.66,
        imageURL: "https://static.vecteezy.com/system/resources/previews/000/964/198/non_2x/fast-food-meal-set-vector.jpg",
        calories: 12,
        carbs: 21,
        protein: 12)
    static let sample02Appetizer = AppetizerModel(
        id: 2,
        name: "rango 02",
        description: "rango bao",
        price: 666.66,
        imageURL: "https://static.vecteezy.com/system/resources/previews/000/964/198/non_2x/fast-food-meal-set-vector.jpg",
        calories: 12,
        carbs: 21,
        protein: 12)
    static let sample03Appetizer = AppetizerModel(
        id: 3,
        name: "rango 03",
        description: "rango bao",
        price: 666.66,
        imageURL: "https://static.vecteezy.com/system/resources/previews/000/964/198/non_2x/fast-food-meal-set-vector.jpg",
        calories: 12,
        carbs: 21,
        protein: 12)

    static let appetizers = [sample01Appetizer, sample02Appetizer, sample03Appetizer]
}
