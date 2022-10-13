//
//  Heros.swift
//  designPatternHeroes
//
//  Created by Kevin FICHOU on 13/10/2022.
//

import Foundation
import UIKit

class Heros: Character {
    var name: String
    var weaponName: String
    var weaponStrength: Int
    var armor: Int
    var pointsOfLife: Int
    var strength: Int
    var endurance: Int
    
    
    init(name: String, weaponName: String, weaponStrength: Int, armor: Int, pointsOfLife: Int, strength: Int, endurance: Int) {
        self.name = name
        self.weaponName = weaponName
        self.weaponStrength = weaponStrength
        self.armor = armor
        self.pointsOfLife = pointsOfLife
        self.strength = strength
        self.endurance = endurance
    }
    
    func fight() -> Int {
        print("\(self.name) attaque avec son \(self.weaponName) !")
        let totalForce = self.strength * self.weaponStrength
        print("il inflige \(totalForce) points de dégâts...")
        return totalForce
    }
    
    func loosePointsOfLife(attackStrength: Int) {
        let result = self.pointsOfLife - attackStrength
        self.pointsOfLife = result
        print("Aïe ! \(self.name) perd \(result) points de vie !! Ripostez que diable")
    }
    
    public func deadHeros() {
        print("\(self.name) est vaillamment tombé face à son terrible ennemi !")
    }
    
    
}
