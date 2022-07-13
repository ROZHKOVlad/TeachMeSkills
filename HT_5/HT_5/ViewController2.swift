import UIKit

class ViewController2: UIViewController {

    let movedCircle: UIView = UIView()
    
    let diametrOfCircle = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        movedCircle.layer.cornerRadius = CGFloat(diametrOfCircle / 2)
        view.addSubview(movedCircle)
    }
    
    @IBAction func generateCircle(_ sender: Any) {
        let movedCircleX = Double.random(in: 10...320)
        let movedCircleY = Double.random(in: 10...530)
        movedCircle.frame = CGRect(x: movedCircleX, y: movedCircleY, width: Double(diametrOfCircle), height: Double(diametrOfCircle))
        movedCircle.backgroundColor = .randomColor
    }
}
