//
//  ItemView.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/26/22.
//

import SwiftUI

struct ItemView: View {
    
    // MARK: BINDING VALUE FOR REAL TIME UPDDATES
    @Binding var item: Item
//    @StateObject var items = CartViewModel()
    
    var body: some View {
        // MARK: REMINDER -> ADD SPACING VALUES TO HSTACK AND VSTACK TAGS
        HStack {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .cornerRadius(15)
            
            VStack {
                Text(item.name)
                Text(item.details)
                
                HStack {
                    Text("22.99")
                    Spacer()
                    Image(systemName: "minus")
                    Text("1")
                    Image(systemName: "plus")
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
