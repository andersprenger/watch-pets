//
//  Pet.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import Foundation

struct Pet: Identifiable {
    let name: String
    let emoji: String
    let says: String
    
    let id: String = UUID().uuidString
}
