//
//  WebServices.swift
//  StocksApp
//
//  Created by Hiram Castro on 11/9/20.
//

import Foundation

class WebServices {
    
    func getStocks(completion: @escaping (([Stock]?) -> Void)) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            completion([])
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            
            guard let data = data, error == nil else {
                completion([])
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion([]) : completion(stocks)
            
        }.resume()
        
    }
    
}
