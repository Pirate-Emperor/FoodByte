//
//  DismissButton.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import SwiftUI

struct DismissButton: View {
    var onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 30, height: 30)
                .background(.white)
                .clipShape(.circle)
                .foregroundColor(.brandPrimary)
                .opacity(0.6)
        }
        .padding(.all, 5)
    }
}

#Preview {
    DismissButton() {}
}
