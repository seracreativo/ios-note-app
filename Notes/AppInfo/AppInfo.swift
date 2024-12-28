//
//  AppInfo.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import Foundation

class AppInfo: ObservableObject {
    
    @Published  var cards: [NCard] = [
        NCard(title: "Travel Itinerary", text: "Try pasta carbonara or avocado toast for breakfast.", type: .small, isFavorite: false),
        NCard(title: "Project Ideas", text: "Flight at 8:00 AM, hotel check-in at 3:00 PM.", type: .small, isFavorite: false),
        NCard(title: "Workout Plan", text: "Meditate, complete assignments, call mom.", type: .large, isFavorite: false),
        NCard(title: "Workout Plan", text: "Milk, bread, eggs, and chocolate.", type: .small, isFavorite: true),
        NCard(title: "Travel Itinerary", text: "Milk, bread, eggs, and chocolate.", type: .large, isFavorite: false),
        NCard(title: "Workout Plan", text: "Try pasta carbonara or avocado toast for breakfast.", type: .large, isFavorite: false),
        NCard(title: "Book Recommendations", text: "Monday: Chest, Wednesday: Legs, Friday: Back.", type: .large, isFavorite: false),
        NCard(title: "Birthday Reminders", text: "Flight at 8:00 AM, hotel check-in at 3:00 PM.", type: .small, isFavorite: false),
        NCard(title: "Meeting Notes", text: "Sweep floors, clean windows, do laundry.", type: .large, isFavorite: false),
        NCard(title: "Travel Itinerary", text: "Try pasta carbonara or avocado toast for breakfast.", type: .small, isFavorite: true)
    ]
    
    var favorites: [NCard] {
        cards.filter  {$0.isFavorite}
    }
    
    func toggleFavorite(card: NCard) {
        if let index = cards.firstIndex(of: card) {
            cards[index].isFavorite.toggle()
        }
    }
    
    func createNote(card: NCard) {
        cards.append(card)
    }
}

