//
//  ModelData.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import Foundation

class ModelData: ObservableObject {
    @Published var pets: [Pet]
    @Published var petsList: [Pet]

    init() {
        self.pets = []
        self.petsList = []
        
        pets.append(Pet(name: "Dog", emoji: "🐶", says: "Woof!"))
        pets.append(Pet(name: "Cat", emoji: "😸", says: "Meow!"))
        pets.append(Pet(name: "Mouse", emoji: "🐭", says: "Squeek!"))
        pets.append(Pet(name: "Bird", emoji: "🦅", says: "Squeek!"))
        pets.append(Pet(name: "Fox", emoji: "🦊", says: "Ring-ding-ding-ding-dingeringeding!"))
        pets.append(Pet(name: "Bear", emoji: "🐻", says: "Bear Says Thanks!"))
        pets.append(Pet(name: "Fish", emoji: "🐠", says: "Blub!"))
        pets.append(Pet(name: "Frog", emoji: "🐸", says: "Quack!"))
        pets.append(Pet(name: "Monkey", emoji: "🦭", says: "Ow Ow Ow!!!"))
        pets.append(Pet(name: "Unicorn", emoji: "🦄", says: "Neigh!"))
        pets.append(Pet(name: "Bee", emoji: "🐝", says: "zzzzzz!"))
        pets.append(Pet(name: "Ladybug", emoji: "🐞", says: "Tikki, spots on!"))
    }
}
