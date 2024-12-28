//
//  NCreateNoteModel.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import Foundation

    class NCreateNoteModel: ObservableObject {
        
        @Published  var title: String = ""
        @Published  var text: String = ""
        @Published  var size: NCardType = .small
        @Published  var isFavorite: Bool = false
        
        func createNote() -> NCard {
            let card = NCard(title: title, text: text, type: size, isFavorite: isFavorite)
            return card
        }
    }
