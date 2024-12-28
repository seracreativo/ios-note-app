//
//  NdetailsView.swift
//  Notes
//
//  Created by Frank Sera on 27/12/24.
//

import SwiftUI

struct NdetailsView: View {
    
    @State var card: NCard
    
    var body: some View {
        ScrollView {
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Text(card.text)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(32)
        .padding()
        .background(.gray .opacity(0.1))
    }
}

#Preview {
    NdetailsView(card: NCard(title: "Tatiana la loca de la calle progreso Tatiana la loca de la calle progreso", text: "Tatiana la loca de la calle progreso Tatiana la loca de la calle progreso Tatiana la loca de la calle progreso Tatiana la loca de la calle progreso", type: .small, isFavorite: false))
}
