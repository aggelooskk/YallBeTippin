//
//  TipView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 11/2/25.
//

import SwiftUI

struct TipView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .center, spacing: 10) {
                Button {
                    print("Button tapped")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black)
                        
                        Text("18%")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }
                Button {
                    print("Button tapped")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black)
                        
                        Text("20%")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }
                Button {
                    print("Button tapped")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black)
                        
                        Text("22%")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding(.horizontal)
            
            Button {
                print("skip button tapped")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                    Text("Skip")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
            }
            .frame(maxHeight: 70)
            .padding(.horizontal)
        }
    }
}

#Preview {
    TipView()
}
