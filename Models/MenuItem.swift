//
//  MenuItem.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 5/2/25.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let name: String
    let price: Double
    let img: String
    var orderCount = 0
    
    var total: Double {
        price * Double(orderCount)
    }
    
}
