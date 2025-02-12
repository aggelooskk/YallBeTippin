//
//  MenuListVM.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 6/2/25.
//

import Foundation
import Observation

@Observable final class MenuListVM {
    enum Screen: String {
        case fullMenu, cart, tip, receipt
    }
    
    var path: [Screen] = []
    
     var items: [MenuItem] = [
           MenuItem(name: "Burger", price: 12.5, img: "burger"),
           MenuItem(name: "Chow mein", price: 13, img: "chowMein"),
           MenuItem(name: "Dumplings", price: 7, img: "dumplings"),
           MenuItem(name: "Fried chicken", price: 14.5, img: "friedChicken"),
           MenuItem(name: "Pizza", price: 6, img: "pizza"),
           MenuItem(name: "Spaghetti", price: 13.5, img: "spaghetti"),
           MenuItem(name: "Steak", price: 16, img: "steak"),
           MenuItem(name: "Sushi", price: 8, img: "sushi")
     ] {
         didSet {
             let sum = items.reduce(0) {
                 $0 + $1.total
             }
             total = sum * tipPercentage.rawValue
         }
     }
    
    var tipPercentage: TipPercentage = .none {
        didSet {
            total *= TipPercentage.rawValue
        }
    }
    
    var total: Double = 0
}
