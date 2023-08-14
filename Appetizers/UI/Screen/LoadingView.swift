//
//  LoadingView.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .foregroundColor(.brandPrimary)
        }
    }
}

#Preview {
    LoadingView()
}
