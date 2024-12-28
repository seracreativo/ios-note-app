//
//  NCardView.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI

struct NCardView: View {
    
    let card : NCard
    
    var onToggleGesture: (() -> Void)?
    
    func FavoriteButton() -> some View {
        Image(systemName: card.isFavorite ? "star.fill" : "star")
            .font(.title3)
            .foregroundStyle(Color.yellow)
            .onTapGesture {
                onToggleGesture?()
            }
    }
    
    // MARK: - Small Card View Component
    @ViewBuilder
    func CardSmallView() -> some View {
        HStack(alignment: .top, spacing: 16) {
            
            FavoriteButton()
           
            VStack(alignment: .leading, spacing: 8) {
                Text(card.title)
                    .font(.headline)
                    .bold()
                    
                Text(card.text)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
           
                
            
        }
        .padding()
        .listRowSeparator(.hidden)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .frame(maxWidth: .infinity)
           
            
    }
    
    var body: some View {
      

                CardSmallView()
            
     
    }
}

#Preview {
    NCardView(card: NCard(title: "Card", text: "Card Text", type: .small, isFavorite: false))
}
