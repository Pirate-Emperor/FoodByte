//
//  FoodByteDetailView.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import SwiftUI

struct FoodByteDetailView: View {
    var FoodByte: FoodByte!
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            topImage(imageUrlString: FoodByte.imageURL) {
                isShowingDetail = false
            }
            Spacer()
            title()
            Spacer()
            description()
            Spacer()
            nutritionDetails()
            Spacer()
            button()
                .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
    }

    @ViewBuilder private func button() -> some View {
        CustomButton(title: "$\(FoodByte.price, specifier: "%.2f") - Add To Order")
    }

    @ViewBuilder private func title() -> some View {
        Text(FoodByte.name)
            .font(.title2)
            .fontWeight(.semibold)
    }

    @ViewBuilder private func description() -> some View {
        Text(FoodByte.description)
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .padding()
    }

    @ViewBuilder private func nutritionDetails() -> some View {
        HStack(spacing: 40) {
            nutritionItem(name: "Calories", value: "\(FoodByte.calories)")
            nutritionItem(name: "Carbs", value: "\(FoodByte.carbs) g")
            nutritionItem(name: "Protein", value: "\(FoodByte.protein) g")
        }.padding(.horizontal)
    }
}

@ViewBuilder private func topImage(
    imageUrlString: String,
    onClose: @escaping () -> Void
) -> some View {
    FoodByteRemoteImage(urlString: imageUrlString)
        .aspectRatio(contentMode: .fill)
        .frame(width: 320, height: 225)
        .overlay(alignment: .topTrailing) {
            DismissButton(onClick: onClose)
        }
}

@ViewBuilder private func nutritionItem(name: String, value: String) -> some View {
    HStack {
        VStack(spacing: 5) {
            Text(name)
                .font(.caption)
                .fontWeight(.bold)

            Text(value)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    FoodByteDetailView(
        FoodByte: MockData.sampleFoodByte,
        isShowingDetail: .constant(true)
    )
}
