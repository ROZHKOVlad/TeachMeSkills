import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var totalSessionProfit: UILabel!
    @IBOutlet weak var beerBar: UILabel!
    @IBOutlet weak var resetDay: UILabel!
    @IBOutlet weak var nameOfFirstBeer: UILabel!
    @IBOutlet weak var nameOfSecondBeer: UILabel!
    @IBOutlet weak var nameOfThirdBeer: UILabel!
    @IBOutlet weak var profitFromFirstBeer: UILabel!
    @IBOutlet weak var profitFromSecondBeer: UILabel!
    @IBOutlet weak var profitFromThirdBeer: UILabel!
    @IBOutlet weak var totalProfit_Value: UILabel!
    
    let firstBeer = Beer(nameOfBeer: "Lydskoe", priceOfOneBottle: 2.5, nameOfBeerCounrty: "Belarus", capacityOfOneBottle: 0.5)
    let secondBeer = Beer(nameOfBeer: "Corona", priceOfOneBottle: 4.0, nameOfBeerCounrty: "USA", capacityOfOneBottle: 0.33)
    let thirdBeer = Beer(nameOfBeer: "Paulaner", priceOfOneBottle: 7.5, nameOfBeerCounrty: "Germany", capacityOfOneBottle: 0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfFirstBeer.text = firstBeer.nameOfBeer
        nameOfSecondBeer.text = secondBeer.nameOfBeer
        nameOfThirdBeer.text = thirdBeer.nameOfBeer
        resetDay.text = "Reset a session"
        beerBar.text = "Beer Bar"
        totalSessionProfit.text = "Total Profit"
    }
    
    var profitFirst: Double = 0.0
    @IBAction func sellFirstBeer(_ sender: Any) {
        profitFirst = SellingOfBeer.shared.sellBeer(profit: &profitFirst, priceOfOneBottle: firstBeer.priceOfOneBottle)
        profitFromFirstBeer.text = "\(profitFirst)"
    }
    
    var profitSecond: Double = 0.0
    @IBAction func sellSecondBeer(_ sender: Any) {
        profitSecond = SellingOfBeer.shared.sellBeer(profit: &profitSecond, priceOfOneBottle: secondBeer.priceOfOneBottle)
        profitFromSecondBeer.text = "\(profitSecond)"
    }
    
    var profitThird: Double = 0.0
    @IBAction func sellThirdBeer(_ sender: Any) {
        profitThird = SellingOfBeer.shared.sellBeer(profit: &profitThird, priceOfOneBottle: thirdBeer.priceOfOneBottle)
        profitFromThirdBeer.text = "\(profitThird)"
    }
    
    var totalProfit: Double = 0.0
    @IBAction func countTotalProfit(_ sender: Any) {
        totalProfit = SellingOfBeer.shared.countTotal(profit1: &profitFirst, profit2: &profitSecond, profit3: &profitThird, total: &totalProfit)
        totalProfit_Value.text = "\(totalProfit)"
        profitFromFirstBeer.text = "\(profitFirst)"
        profitFromSecondBeer.text = "\(profitSecond)"
        profitFromThirdBeer.text = "\(profitThird)"
    }

    @IBAction func resetSession(_ sender: Any) {
        SellingOfBeer.shared.resetSession(profit1: &profitFirst, profit2: &profitSecond, profit3: &profitThird, total: &totalProfit)
        totalProfit_Value.text = "\(totalProfit)"
        profitFromFirstBeer.text = "\(profitFirst)"
        profitFromSecondBeer.text = "\(profitSecond)"
        profitFromThirdBeer.text = "\(profitThird)"
    }
}

