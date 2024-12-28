//
//  AlertsPractice.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct AlertsPractice: View {
    
    @State var showAlert: Bool = false
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Button("Show Alerts") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            NCreateNoteView()
        }
        .alert("Este es un mensaje de alerta", isPresented: $showAlert) {
            Button("Aceptar") {
                print("Aceptar")
            }
            Button("Cancelar") {
                print("Cancelar")
            }
        }
    }
}

#Preview {
    AlertsPractice()
}
