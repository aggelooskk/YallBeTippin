//
//  ContentView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var vm = MenuListVM()
    
    var body: some View {
        NavigationStack(path: $vm.path) {
            MenuListView(showFullMenu: true)
                .navigationBarTitleDisplayMode(.inline)
        }
        .environment(vm)
    }
}

#Preview {
    ContentView()
}
