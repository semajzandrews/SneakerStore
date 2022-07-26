//
//  CartView.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/26/22.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var cartData = CartViewModel()
    
    var body: some View {
        VStack {
            HStack(spacing: 20){
                Button {
                   
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
                Text("Cart")
                Spacer()
            }
            .font(.system(size: 28, weight: .heavy))
            .padding()
//            Spacer(minLength: 0)
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack(spacing: 0){
                    ForEach(cartData.items){ item in
                    
                        // MARK: ITEM VIEW
                        
                        
                    }
                }
            }
        }
        .background(
            Color.gray.opacity(0.20)
        )
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
