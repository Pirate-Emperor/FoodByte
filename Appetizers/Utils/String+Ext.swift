//
//  String+Ext.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailRegEx = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: self)
    }
}
