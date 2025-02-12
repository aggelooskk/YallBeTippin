//
//  ReceiptView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 12/2/25.
//

import SwiftUI

struct ReceiptView: View {
    @Environment(MenuListVM.self) private var vm
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Thank you!")
                .font(.largeTitle)
            
            List {
                ForEach(vm.receiptItems, id: \.id) {
                    ReceiptItemView(item: $0)
                }
                if let tip = vm.receiptTip {
                    ReceiptTotalView(item: tip)
                }
                if let total = vm.receiptTotal {
                    ReceiptTotalView(item: total)
                }
            }
            .listStyle(.plain)
        }
        .onAppear {
            vm.calculate()
        }
        .onDisappear {
            
        }
    }
}

#Preview {
    ReceiptView()
}
