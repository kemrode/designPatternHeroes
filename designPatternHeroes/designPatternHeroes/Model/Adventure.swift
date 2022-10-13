//
//  Adventure.swift
//  designPatternHeroes
//
//  Created by Kevin FICHOU on 13/10/2022.
//

import Foundation
import UIKit

class Adventure {
    var name: String
    var heros: Heros
    var monster: Monster
    public lazy var observers = [Observer]()
    
    init(name: String, heros: Heros, monster: Monster) {
        self.name = name
        self.heros = heros
        self.monster = monster
    }
    
    public func newAdventure() {
        let herosAttack = self.heros.fight()
        self.monster.loosePointsOfLife(attackStrength: herosAttack)
        if self.monster.pointsOfLife <= 0 {
            self.notify()
        }
    }
    
    private func notify() {
        self.observers.forEach( {$0.endGame()} )
    }
}
