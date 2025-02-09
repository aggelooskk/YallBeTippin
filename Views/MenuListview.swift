//
//  MenuListview.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 5/2/25.
//

import SwiftUI

struct MenuListview: View {
    @State var vm = MenuListVM()
    
    var body: some View {
        List($vm.items) { $item in
            MenuItemView(item: $item)
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuListview()
}
