//
//  MainViewController.swift
//  designPatternHeroes
//
//  Created by Kevin FICHOU on 13/10/2022.
//

import UIKit

class MainViewController: UIViewController, Observer {
    
// MARK: - IBOutlet
    @IBOutlet weak var newAdventureBtn: UIButton!

// MARK: - Properties
    
    var marcusFenix: Heros!
    var locust: Monster!
    var newAdventure: Adventure!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.newAdventureBtn.setTitle("Attaquez", for: .normal)
        self.marcusFenix = Heros(
            name: "Marcus Fénix",
            weaponName: "Lanzor",
            weaponStrength: 5,
            armor: 150,
            pointsOfLife: 50,
            strength: 3,
            endurance: 3)
    
        self.locust = Monster(
            name: "Drone locust",
            weaponName: "Kaomax",
            weaponStrength: 3,
            armor: 75,
            pointsOfLife: 50,
            strength: 4,
            endurance: 4)
        
        self.newAdventure = Adventure(
            name: "Combat de rue",
            heros: self.marcusFenix,
            monster: self.locust)
        self.newAdventure.observers.append(self)
        
        if self.locust.pointsOfLife <= 0 {
            self.view.backgroundColor = .red
            self.newAdventureBtn.isEnabled = false
        }
    }
    
    @IBAction func launchNewAdventure(_ sender: Any) {
        self.newAdventure.newAdventure()
    }
    
    func endGame() {
        self.locust.deadMonster()
        self.view.backgroundColor = .red
        self.newAdventureBtn.isEnabled = false
        print("l'aventure se termine ainsi...")
    }

}
