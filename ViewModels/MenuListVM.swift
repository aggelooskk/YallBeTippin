//
//  MenuListVM.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 6/2/25.
//

import Foundation
import Observation

@Observable final class MenuListVM {
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
                 $0 + ($1.price * Double($1.orderCount))
             }
             total = sum
         }
     }
    
    var total: Double = 0
}
