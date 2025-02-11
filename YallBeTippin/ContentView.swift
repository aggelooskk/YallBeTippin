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
        NavigationStack {
            MenuListview()
                .navigationBarTitleDisplayMode(.inline)
        }
        .environment(vm)
    }
}

#Preview {
    ContentView()
}
