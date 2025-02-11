//
//  MenuItemView.swift
//  YallBeTippin
//
//  Created by Anxhelo Kermezo on 9/2/25.
//

import SwiftUI

struct MenuItemView: View {
    @Binding var item: MenuItem
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 15) {
                Text(item.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(item.price.toCurrency())
                    .font(.title3)
            }
            
            Spacer()
            
            if item.orderCount > 0 {
                VStack(alignment: .center, spacing: 5) {
                    Button {
                        item.orderCount += 1
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.blue)
                            
                            Image(systemName: "plus")
                                .symbolRenderingMode(.monochrome)
                                .foregroundStyle(.white)
                        }
                    }
                    
                    Text("\(item.orderCount)")
                    
                    Button {
                        item.orderCount -= 1
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.blue)
                            
                            Image(systemName: "minus")
                                .symbolRenderingMode(.monochrome)
                                .foregroundStyle(.white)
                        }
                    }
                }
                .buttonStyle(.borderless)
            }
            
            Image(item.img)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .frame(maxHeight: 100)
        .onTapGesture {
            item.orderCount += 1
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MenuItemView(item: .constant(MenuItem(name: "Burger", price: 12.5, img: "burger", orderCount: 1)))
}
