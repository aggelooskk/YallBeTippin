//
//  TipButton.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 12/2/25.
//

import SwiftUI

struct TipButton: View {
    @Environment(MenuListVM.self) private var vm
    let tip: TipPercentage
    
    var body: some View {
        Button {
            vm.tipPercentage = tip
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(tip == vm.tipPercentage
                          ? .blue : .black)
                
                Text(tip.toString())
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    TipButton(tip: .medium)
}
