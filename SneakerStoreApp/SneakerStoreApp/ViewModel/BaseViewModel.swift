//
//  BaseViewModel.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/21/22.
//

import SwiftUI

class BaseViewModel: ObservableObject {
    
    // MARK: TAB BAR
    @Published var currentTab: Tab = .Home
}

enum Tab: String {
    case Home = "home"
    case Heart = "heart"
    case Clipboard = "clipboard"
    case Person = "person"
}
