//
//  BaseView.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/21/22.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseData = BaseViewModel()
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $baseData.currentTab){
            Text("Home")
                .tag(Tab.Home)
            Text("Heart")
                .tag(Tab.Heart)
            Text("Clipboard")
                .tag(Tab.Clipboard)
            Text("Person")
                .tag(Tab.Person)
        }
        .overlay(
            // MARK: CUSTOM TAB BAR
            HStack(spacing: 0){
                
            }
        )
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab) -> some View {
        
        Button {
            withAnimation {
                baseData.currentTab = Tab
            }
        } label: {
            Image(Tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
//                .foregroundColor(<#T##color: Color?##Color?#>)
        }
    }
    
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
