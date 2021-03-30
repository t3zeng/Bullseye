//
//  Shapes.swift
//  Bullseye
//
//  Created by Tianyu Zeng on 3/29/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 20)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
