//
//  Button.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import SwiftUI

struct CustomButton: View {
    var title: LocalizedStringKey
    
    var body: some View {
            Text(title)
                .frame(width: 280, height: 50)
                .background(.brandPrimary)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
        }
}

#Preview {
    CustomButton(title: "Test")
}
