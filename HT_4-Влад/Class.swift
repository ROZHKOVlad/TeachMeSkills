import Foundation

//MARK: - Class Beer
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
        print("Deinit1")
    }
}

//MARK: - Singlton Class SellingOfBeer
class SellingOfBeer {
    
    static let shared = SellingOfBeer()
    
    func sellBeer(profit: inout Double, priceOfOneBottle: Double) -> Double {
        return profit + priceOfOneBottle
    }
    
    func countTotal(profit1: inout Double, profit2: inout Double, profit3: inout Double, total: inout Double) -> Double {
        total = total + profit1 + profit2 + profit3
        profit1 = 0.0
        profit2 = 0.0
        profit3 = 0.0
        return total
    }
    
    func resetSession(profit1: inout Double, profit2: inout Double, profit3: inout Double, total: inout Double) {
        profit1 = 0.0
        profit2 = 0.0
        profit3 = 0.0
        total = 0.0
    }
    
    private init(){}
}
