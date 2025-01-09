///
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
