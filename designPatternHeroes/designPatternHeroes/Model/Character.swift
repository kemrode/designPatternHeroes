//
//  Character.swift
//  designPatternHeroes
//
//  Created by Kevin FICHOU on 13/10/2022.
//

import Foundation
import UIKit

protocol Character {
    
    var name: String { get }
    var weaponName: String { get }
    var weaponStrength: Int { get }
    var armor: Int { get }
    var pointsOfLife: Int { get set }
    var strength: Int { get }
    var endurance: Int { get }
    
    
    func fight() -> Int
    func loosePointsOfLife(attackStrength: Int)
    
}
