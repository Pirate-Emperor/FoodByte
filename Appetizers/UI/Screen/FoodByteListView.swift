//
//  FoodByteListView.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import SwiftUI

struct FoodByteListView: View {
    @StateObject var viewModel = FoodByteListViewVM()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.FoodByte) { FoodByte in
                    FoodByteListItem(item: FoodByte)
                        .onTapGesture {
                            viewModel.sellectedFoodByte = FoodByte
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("FoodByte")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear { viewModel.getFoodByte() }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)

            if viewModel.isShowingDetail {
                FoodByteDetailView(
                    FoodByte: viewModel.sellectedFoodByte,
                    isShowingDetail: $viewModel.isShowingDetail
                )
            }

            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alert) { alert in
            Alert(
                title: alert.title,
                message: alert.message,
                dismissButton: alert.dismissButton
            )
        }
    }
}

#Preview {
    FoodByteListView()
}
