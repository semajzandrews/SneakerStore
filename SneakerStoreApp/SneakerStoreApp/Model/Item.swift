//
//  Item.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/26/22.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var details: String
    var image: String
    var price: Double
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
}


// id, name, details, image, price, quantity, offset, isSwiped
