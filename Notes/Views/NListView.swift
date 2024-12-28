//
//  NListView.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct NListView: View {
    @EnvironmentObject private var appInfo: AppInfo
    
    @State private var showSheet = false
    @State private var showDetails = false
    @State private var selectedCard: NCard?
    
    var forFavorite: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(forFavorite  ? appInfo.favorites : appInfo.cards) { card in
                    NCardView(card: card) {
                        appInfo
                            .toggleFavorite(card: card)
                    }
                        .onTapGesture {
                            selectedCard = card
                            showDetails = true
                        }
                }
                
            }
            .listStyle(.plain)
            .sheet(isPresented: $showSheet) {
                NCreateNoteView { card in
                    appInfo.createNote(card: card)
                    showSheet = false
                }
            }
            .overlay {
                VStack {
                    Spacer()
                    Button(action: {
                        showSheet = true
                    }) {
                        Text("Nueva Nota")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom)
                }
            }
            .navigationDestination(isPresented: $showDetails) {
                if let selectedCard {
                    NdetailsView(card: selectedCard)
                }
            }
            .navigationTitle("Notes")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.gray, for: .navigationBar)
            .toolbar {
                Button{
                    showSheet = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            
        }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}
