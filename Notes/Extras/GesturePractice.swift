//
//  GesturePractice.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct GesturePractice: View {
    
    @State var color : Color = .red
    @State var offset : CGSize = .zero
    
    
    var body: some View {
        Circle()
            .offset(offset)
            .foregroundStyle(color)
            .onTapGesture(count: 3) {
                color = .blue
            }
            .onLongPressGesture(perform: {
                color = .green
            })
            .gesture(DragGesture()
                .onChanged { value in
                    offset = value.translation
                }
            )
    }
}

#Preview {
    GesturePractice()
}
