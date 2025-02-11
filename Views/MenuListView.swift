//
//  MenuListview.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 5/2/25.
//

import SwiftUI

struct MenuListView: View {
    @Environment(MenuListVM.self) private var vm
    let showFullMenu: Bool
    @State private var showAlert = false
    
    var body: some View {
        @Bindable var vm = vm
        List($vm.items) { $item in
            if showFullMenu {
                MenuItemView(item: $item)
            } else if item.orderCount > 0 {
                MenuItemView(item: $item)
            }
        }
        .navigationTitle(showFullMenu ? "Menu" : "Cart")
        .navigationDestination(for: MenuListVM.Screen.self) { path in
            if path == .cart {
                MenuListView(showFullMenu: false)
            } else if path == .tip {
                // navigate to TipView()
            }
        }
        .toolbar {
            if showFullMenu {
                Button {
             if vm.total == 0 {
              showAlert = true
            } else {
                vm.path.append(.cart)
              }
             } label: {
               Image(systemName: "cart")
              }
            } else {
               Button("Submit") {
                //navigation to tipview
            }
        }
    }
        .alert("Your cart is empty!", isPresented: $showAlert) {
            Button("Dismiss") {}
        }
    }
}

#Preview {
    MenuListView(showFullMenu: true)
}
