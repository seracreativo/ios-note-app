//
//  TogglePractice.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var age: Double = 18
    @State var isAdult: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Age \(age.formatted(.number))")
            Slider(value:$age, in: 1...100, step: 1)
            Toggle("Is adult", isOn: $isAdult)
        }
        .padding()
        .onChange(of: age) { newValue in
           if newValue >= 18 {
                isAdult = true
           } else if newValue < 18 {
               isAdult = false
           }
        }
      
    }
}

#Preview {
    TogglePractice()
}
