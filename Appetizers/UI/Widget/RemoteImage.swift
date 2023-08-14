//
//  RemoteImage.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import SwiftUI

internal final class ImageLoader : ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromUrlString: String) {
        NetworkManager.shared.downloadImage(fromUrlString: fromUrlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

private struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder")
    }
}

struct FoodByteRemoteImage : View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromUrlString: urlString)
            }
    }
}

#Preview {
    RemoteImage()
}
