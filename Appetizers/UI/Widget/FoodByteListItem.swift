//
//  FoodByteListItem.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation
import SwiftUI

struct FoodByteListItem : View{
    var item: FoodByte
    
    var body: some View {
            HStack {
                FoodByteRemoteImage(urlString: item.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(5)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(item.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("$\(item.price, specifier: "%.2f")")
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                }
                .padding(.leading)
            }
    }
}

#Preview {
    FoodByteListItem(item: MockData.FoodByte.first!)
}
