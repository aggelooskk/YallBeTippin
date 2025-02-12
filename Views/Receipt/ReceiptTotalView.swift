//
//  ReceiptTotalView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 12/2/25.
//

import SwiftUI

struct ReceiptTotalView: View {
    let item: FinalReceiptItem
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            Text(item.title)
                .font(.title3)
            
            Spacer()
            
            Text(item.value)
                .font(.title3)
        }
        .padding(.horizontal)
    }
}
