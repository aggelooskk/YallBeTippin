//
//  TipPercentage.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 12/2/25.
//

import Foundation

enum TipPercentage: Double {
    case small = 1.18
    case medium = 1.20
    case large = 1.22
    case none = 1
    
    func toString() -> String {
        switch self {
        case .small:
            return "18%"
        case .medium:
            return "20%"
        case .large:
            return "22%"
        case .none:
           return  "Skip"
        }
    }
}
