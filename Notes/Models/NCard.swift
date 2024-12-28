//
//  NCard.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import Foundation

struct NCard: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let text: String
    let type: NCardType
    var isFavorite: Bool
}

enum NCardType: Equatable {
    case small
    case large
}
