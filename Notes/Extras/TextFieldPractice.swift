//
//  TextFieldPractice.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var name: String = ""
    @State var color: Color = .gray .opacity(0.1)
    @State var date: Date = Date()
    
    var body: some View {
        TextField("Name", text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(12)
            .padding(12)
            .onChange(of: name) { newValue in
                print(newValue)
                
                if newValue.count >= 5 {
                    color = .red .opacity(0.1)
                } else {
                    color = .gray .opacity(0.1)
                }
            }
        
        DatePicker("date", selection: $date)
        
        TextEditor( text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(12)
            .scrollContentBackground(.hidden)
            .padding(12)
            .onChange(of: name) { newValue in
                if newValue.count >= 5 {
                    color = .red .opacity(0.1)
                } else {
                    color = .gray .opacity(0.1)
                }
            }
        
       
    }
}

#Preview {
    TextFieldPractice()
}
