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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.4))
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
                TabButton(Tab: .Home)
                TabButton(Tab: .Heart)
                TabButton(Tab: .Clipboard)
                TabButton(Tab: .Person)
            },
            
            alignment: .bottom
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
                .foregroundColor(baseData.currentTab == Tab ? Color("DarkBlue"): Color.gray.opacity((0.5)))
                .frame(maxWidth: .infinity)
        }
    }
    
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
