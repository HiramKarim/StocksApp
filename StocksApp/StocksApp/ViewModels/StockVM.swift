//
//  StockVM.swift
//  StocksApp
//
//  Created by Hiram Castro on 11/9/20.
//

import Foundation

struct StockVM {
    
    let stock:Stock?
    
    var symbol:String {
        return self.stock?.symbol ?? ""
    }
    var description:String {
        return self.stock?.description ?? ""
    }
    var price:String {
        return String(format: "%.2f", self.stock?.price ?? 0.0)
    }
    var change:String {
        return self.stock?.change ?? ""
    }
    
}
