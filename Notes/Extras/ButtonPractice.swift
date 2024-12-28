//
//  ButtonPractice.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct ButtonPractice: View {
    
    @State
    var counter : Int = 0
    
    var body: some View {
        
        VStack {
            Text("\(counter)")
            
            Button {
                counter += 1
                print(counter)
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            }
        }
        
       
    }
}

#Preview {
    ButtonPractice()
}
