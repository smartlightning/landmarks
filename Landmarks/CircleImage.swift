//
//  CircleImage.swift
//  Landmarks
//
//  Created by Chris McQueen on 29.05.24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
            
    }
}

#Preview {
    CircleImage()
}
