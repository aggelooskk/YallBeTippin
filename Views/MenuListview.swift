//
//  MenuListview.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 5/2/25.
//

import SwiftUI

struct MenuListview: View {
    @State var vm = MenuListVM()
    @State private var showAlert = false
    
    var body: some View {
        List($vm.items) { $item in
            MenuItemView(item: $item)
        }
        .navigationTitle("Menu")
        .toolbar {
            Button {
                if vm.total == 0 {
                    showAlert = true
                } else {
                    print("navigate next page")
                }
            } label: {
                Image(systemName: "cart")
            }
        }
        .alert("Your cart is empty!", isPresented: $showAlert) {
            Button("Dismiss") {}
        }
    }
}

#Preview {
    MenuListview()
}
