//
//  Zoo.swift
//  RateTheZoo
//
//  Created by Jim Campagno on 5/3/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

struct Zoo {
    let name: String
    let location: String
    var imageURL: String
    var numberOfAnimals: Int
    var numberOfSpecies: Int
    var animals: [Animal]
}

protocol Animal {
    var name: String { get set }
    var species: String { get }
    var imageURL: String? { get set }
    
    func eat()
}

extension Animal {
    func eat() {
        print("\(name) just ate some food. \(name) is a \(species)")
    }
}

struct BaldEagle: Animal {
    var name: String
    let species: String
    var imageURL: String?
    var zoo: Zoo
}

struct Bat: Animal {
    var name: String
    let species: String
    var imageURL: String?
    var zoo: Zoo
}

struct BrownBear: Animal {
    var name: String
    let species: String
    var imageURL: String?
    var zoo: Zoo
}

struct Chimpanzee: Animal {
    var name: String
    let species: String
    var imageURL: String?
    var zoo: Zoo
}


