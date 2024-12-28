//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct NCreateNoteView: View {
    
    @StateObject var viewModel: NCreateNoteModel = NCreateNoteModel()
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        let card = viewModel.createNote()
        print(card)
        
        onNoteCreated?(card)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Crear Nueva Nota")
                    .font(.title)
                
                TextField("Name", text: $viewModel.title)
                    .font(.headline)
                    .padding()
                    .background(.gray .opacity(0.1))
                    .cornerRadius(12)
                
                TextEditor( text: $viewModel.text)
                    .font(.headline)
                    .padding()
                    .background(.gray .opacity(0.1))
                    .cornerRadius(12)
                    .scrollContentBackground(.hidden)
                    .frame(height: 200)
                
                HStack {
                    Text("Tamaños")
                    Spacer()
                    Picker("Tamaños", selection: $viewModel.size) {
                        Text("Pequeño").tag(NCardType.small)
                        Text("Grande").tag(NCardType.large)

                    }
                }.padding()
                
                Toggle("Marcar como Favorito", isOn: $viewModel.isFavorite)
                    .padding()
                
                Button {
                    onTap()
                } label: {
                    Text("Crear Nota")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(12)
                }
                
            }
            .padding(12)
        }
    }
}

#Preview {
    NCreateNoteView()
}
