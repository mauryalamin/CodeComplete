//
//  Person.swift
//  CodeComplete
//
//  Created by Maury Alamin on 9/24/24.
//

import Foundation

// A Person struct that will be Identifiable and contain editable properties for name and age
struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var age: Int
    var hobby: Hobby
    
    // A static array of Person called samplePeople
    static let samplePeople: [Person] = [
        .init(name: "Maury", age: 2, hobby: .reading),
        .init(name: "John", age: 10, hobby: .cooking),
        .init(name: "Jane", age: 6, hobby: .sports),
        .init(name: "Sally", age: 4, hobby: .music)
        ]
}

// An enum representing a number of hobbies
enum Hobby: String, CaseIterable {
    case reading
    case cooking
    case sports
    case music
    case gaming
    
    // A computed property that will return a string representing an SFSymbol for each of the cases
    var symbol: String {
        switch self {
        case .reading: 
            return "book"
        case .cooking: 
            return "frying.pan"
        case .sports: 
            return "dumbbell"
        case .music: 
            return "music.note"
        case .gaming: 
            return "gamecontroller"
        }
    }
    
}
