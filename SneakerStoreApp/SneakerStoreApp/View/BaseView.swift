//
//  BaseView.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/21/22.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseData = BaseViewModel()
    
    var body: some View {
        
        TabView(selection: $baseData.currentTab){
            
        }
        
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
