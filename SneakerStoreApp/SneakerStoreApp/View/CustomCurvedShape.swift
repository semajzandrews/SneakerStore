//
//  CustomCurvedShape.swift
//  SneakerStoreApp
//
//  Created by Semaj Andrews on 7/25/22.
//

import SwiftUI

struct CustomCurvedShape: Shape {

    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
            
            let mid = rect.width / 2
            
            path.move(to: CGPoint(x: mid - 70, y: 0))
        }
    }
}

struct CustomCurvedShape_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
