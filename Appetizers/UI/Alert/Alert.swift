//
//  Alert.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

enum AletrContext {
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issuse connecting with the server."),
        dismissButton: .default(Text("OK"))
    )
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server."),
        dismissButton: .default(Text("OK"))
    )
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data recieved from the server was invalid."),
        dismissButton: .default(Text("OK"))
    )
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to completed your request at this time."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all fields in the form have been filled out."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure your email is valid."),
        dismissButton: .default(Text("OK"))
    )
    
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was sucessfouly saved."),
        dismissButton: .default(Text("OK"))
    )
    
    static let userSaveError = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was an error saving or retrieving your data"),
        dismissButton: .default(Text("OK"))
    )
}
