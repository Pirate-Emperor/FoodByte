//
//  FoodByte.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation

struct FoodByte: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct FoodByteResponse : Decodable {
    let request: [FoodByte]
}

struct MockData {

    static let sampleFoodByte = FoodByte(
        id: 0001,
        name: "Test FoodByte",
        description: "This is the description for my FoodByte. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )

    static let FoodByte = [sampleFoodByte, sampleFoodByte, sampleFoodByte, sampleFoodByte]

    static let orderItemOne = FoodByte(
        id: 0001,
        name: "Test FoodByte One",
        description: "This is the description for my FoodByte. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )

    static let orderItemTwo = FoodByte(
        id: 0002,
        name: "Test FoodByte Two",
        description: "This is the description for my FoodByte. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )

    static let orderItemThree = FoodByte(
        id: 0003,
        name: "Test FoodByte Three",
        description: "This is the description for my FoodByte. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )

    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}

