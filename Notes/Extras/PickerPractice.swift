//
//  PickerPractice.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct PickerPractice: View {
    
    @State var date: Date = Date()
    @State var category: Int = 0
    
    var body: some View {
        DatePicker("Fecha", selection: $date, displayedComponents: [.hourAndMinute])
            .datePickerStyle(.wheel)
            .padding()
        
        Picker("Categorías", selection: $category) {
            Text("0").tag(0)
            Text("1").tag(1)
            Text("2").tag(2)
        }
        .pickerStyle(.segmented)
        .padding()
            
    }
}

#Preview {
    PickerPractice()
}
