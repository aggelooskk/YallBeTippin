//
//  TipView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 11/2/25.
//

import SwiftUI

struct TipView: View {
    @Environment(MenuListVM.self) private var vm
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .center, spacing: 10) {
                TipButton(tip: .small)
                    
                TipButton(tip: .medium)
                    
                TipButton(tip: .large)
                
            }
            .padding(.horizontal)
            
            Button {
                vm.tipPercentage = .none
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(vm.tipPercentage == .none ? .blue : .black)
                    Text("Skip")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
            }
            .frame(maxHeight: 70)
            .padding(.horizontal)
        }
        .navigationTitle("Just gonna ask a question")
        
        .toolbar {
            Button("Confirm") {
                vm.path.append(.receipt)
            }
        }
    }
}

#Preview {
    TipView()
}
