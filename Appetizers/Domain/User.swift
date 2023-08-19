//
//  User.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation

struct User : Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate: Date = Date()
    var extraNapkins: Bool = false
    var frequentRefils: Bool = false
}
