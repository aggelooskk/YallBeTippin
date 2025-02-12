//
//  ReceiptItemView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 12/2/25.
//

import SwiftUI

struct ReceiptItemView: View {
    let item: MenuItem
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            Text(item.name)
                .font(.title3)
            
            Spacer()
            
            Text("x\(item.orderCount)")
                .font(.title3)
            
            Text("\(item.total)")
                .font(.title3)
        }
        .padding(.horizontal)
    }
}

