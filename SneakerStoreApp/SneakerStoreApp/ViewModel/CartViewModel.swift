//
//  CartViewModel.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/26/22.
//

import SwiftUI

class CartViewModel: ObservableObject {

    // MARK: CART ITEMS
    
    @Published var items = [
    
        Item(name: "Huarrache", details: "detail 1", image: "p1", price: 79.99, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Air Max 89", details: "detail 2", image: "p2", price: 109.99, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "XV Lebron", details: "detail 3", image: "p3", price: 128.49, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Nike Prince", details: "detail 4", image: "p4", price: 222.00, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Adidas Black Viper", details: "detail 5", image: "p5", price: 89.99, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Nike Air Force Dobberbecher", details: "detail 6", image: "p6", price: 125.69, quantity: 1, offset: 0, isSwiped: false)
    
    ]
    
}
