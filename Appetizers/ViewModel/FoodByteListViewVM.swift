//
//  FoodByteListViewVM.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation

final class FoodByteListViewVM : ObservableObject {
    @Published var FoodByte: [FoodByte] = []
    @Published var alert: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var sellectedFoodByte: FoodByte?
    
    func getFoodByte() {
        isLoading = true
        
        NetworkManager.shared.getFoodByte { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                
                switch result {
                case .success(let FoodByte) :
                    self.FoodByte = FoodByte
                case .failure(let error) :
                    switch error {
                        case .invalidData: alert = AletrContext.invalidData
                        case .invalidUrl:  alert = AletrContext.invalidURL
                        case .invalidRepsonse:  alert = AletrContext.invalidResponse
                        case .unableToComplete: alert = AletrContext.unableToComplete
                    }
                }
            }
        }
    }
}
