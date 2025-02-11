//
//  Extensions.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 11/2/25.
//

import Foundation

extension Double {
    func toCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self))!
    }
}
