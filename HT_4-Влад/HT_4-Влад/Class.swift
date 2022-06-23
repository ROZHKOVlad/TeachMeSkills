//
//  Class.swift
//  HT_4-Влад
//
//  Created by Влад Рожко on 22.06.22.
//

import Foundation

class Beer {
    let nameOfBeer: String
    let priceOfOneBottle: Double
    let nameOfBeerCounrty: String
    let capacityOfOneBottle: Double
    
    init(nameOfBeer: String, priceOfOneBottle: Double, nameOfBeerCounrty: String, capacityOfOneBottle: Double) {
        self.nameOfBeer = nameOfBeer
        self.priceOfOneBottle = priceOfOneBottle
        self.nameOfBeerCounrty = nameOfBeerCounrty
        self.capacityOfOneBottle = capacityOfOneBottle
    }
    
    deinit {
        print("The end!!!")
    }
}
let firstBeer = Beer(nameOfBeer: "Lydskoe", priceOfOneBottle: 2.5, nameOfBeerCounrty: "Belarus", capacityOfOneBottle: 0.5)
let secondBeer = Beer(nameOfBeer: "Corona", priceOfOneBottle: 4.0, nameOfBeerCounrty: "USA", capacityOfOneBottle: 0.33)
let thirdBeer = Beer(nameOfBeer: "Paulaner", priceOfOneBottle: 7.5, nameOfBeerCounrty: "Germany", capacityOfOneBottle: 0.5)
