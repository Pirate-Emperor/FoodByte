//
//  NetworkManager.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023
//

import Foundation
import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"
    private let FoodByteURL = "\(baseURL)/FoodByte"
    
    private init() {
        
    }
    
    func getFoodByte(completed: @escaping (Result<[FoodByte], APError>) -> Void) {
        guard let url = URL(string: FoodByteURL) else {
            completed(.failure(APError.invalidUrl))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(APError.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(APError.invalidRepsonse))
                return
            }
            
            guard let data = data else {
                completed(.failure(APError.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(FoodByteResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                    completed(.failure(APError.invalidRepsonse))
                }
            }
        
            task.resume()
        }
    
    func downloadImage(fromUrlString url: String, completed: @escaping (UIImage?) -> Void) {
        let cacheKey = NSString(string: url)
        
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        
        guard let url = URL(string: url) else {
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        
        task.resume()
    }
}
