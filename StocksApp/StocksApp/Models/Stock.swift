//
//  Stock.swift
//  StocksApp
//
//  Created by Hiram Castro on 11/9/20.
//

import Foundation

struct Stock:Decodable {
    let symbol:String?
    let description:String?
    let price:Double?
    let change:String?
}
