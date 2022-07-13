import UIKit

class ViewController3: UIViewController {
    
    var view1X: Int = 0
    var view1Y: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func generateSquares(_ sender: Any) {
        while view1Y < 600 {
            let view1 = UIView()
            view1.frame = CGRect(x: view1X, y: view1Y, width: 78, height: 78)
            view1.backgroundColor = .randomColor
            view.addSubview(view1)
            view1X += 78
            if view1X == 390 {
                view1X = 0
                view1Y += 78
            }
        }
        view1X = 0
        view1Y = 0
    }
}
