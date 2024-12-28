//
//  FomPractice.swift
//  Notes
//
//  Created by Frank Sera on 28/12/24.
//

import SwiftUI

struct FomPractice: View {
    
    @State var name : String = ""
    @State var emailAddress : String = ""
    @State var details : String = ""
    
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $name)
                    .textContentType(.name)
                TextField("Email", text: $emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            Section("Notes") {
                TextField("Detalles", text: $details)
                    
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FomPractice()
}
