//
//  HomeView.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/25/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image("menu")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                }
            }
            .foregroundColor(.black)
            .padding()
            Spacer()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
