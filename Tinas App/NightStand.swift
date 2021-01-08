//
//  NightStand.swift
//  Tinas App
//
//  Created by New User1 on 1/8/21.
//

import Foundation
import SwiftUI
import Combine

struct Item : Identifiable {
    var id = String()
    var category = String()
    var description = String()
    var need = String()
    var image = String()
}

class NightStand : ObservableObject {
    @Published var items = [Item]()
    
    init(){
        refresh()
    }
    
    func refresh(){
    items = [Item]()
    items.append(
        Item(
            id: "1",
            category: "Body Care",
            description: "Hand Lotion",
            need: "Helps hand skin keep smooth and healthy in winters. Tip: essential for long run",
            image: "Hand Lotion"
        )
    )
        items.append(
        Item(
            id: "2",
            category: "Accessory",
            description: "The Fountainhead by Ayn Rand",
            need: "Reading books helps stimulate the mind intellectually and provides relaxation",
            image: "Book"
        )
      )
        items.append(
            Item(
                id: "3",
                category: "Face Care",
                description: "Clinique eye surge",
                need: "helps keep your eyes fresh in the morning, and repairs the undereyes",
                image: "eye moisturizer"
            )
        )
        items.append(
            Item(
                id: "4",
                category: "Body Care",
                description: "Pocket sized Hand Sanitizer",
                need: "Especially during the pendamic, it is important to regularly keep your hands sanitized",
                image: "Hand Sanitizer"
            )
        )
            items.append(
            Item(
                id: "5",
                category: "Body Care",
                description: "Leg Warmer",
                need: "During winters, Leg Warmer help to keep your leg muscles relaxed and warm and prevents injuries",
                image: "Leg Warmer"
            )
          )
            items.append(
                Item(
                    id: "6",
                    category: "Face Care",
                    description: "Burt's Bees Lip Balm",
                    need: "essential to keep lips healthy through all seasons. Comes in different flavors",
                    image: "Lip Balm"
                )
            )
        items.append(
            Item(
                id: "7",
                category: "Face Care",
                description: "Massage Roller",
                need: "These are designed to gently massage the face and ease muscle tension to increase skins glow",
                image: "Massage_Roller"
            )
        )
            items.append(
            Item(
                id: "8",
                category: "Accessory",
                description: "Reusable Water Bottle",
                need: "Reusable watter bottles are environmental friendly and are needed to carry clean water",
                image: "Water Bottle"
            )
          )
            items.append(
                Item(
                    id: "9",
                    category: "Face Care",
                    description: "Rose Water",
                    need: "Rose water helps freshen your face in the morning and has a pleasant natural aroma",
                    image: "Rose water"
                )
            )
        items.append(
            Item(
                id: "10",
                category: "Accessory",
                description: "Scented Candles",
                need: "Helps relax the mind and creates an ambiance. Scented Candles can create an environment beneficial to your well being",
                image: "Scented Candles"
            )
        )
    }

}

