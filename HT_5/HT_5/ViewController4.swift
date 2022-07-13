import UIKit

class ViewController4: UIViewController {
    
    let circle: UIView = UIView()
    
    let diametrOfCircle = 90
    let movingOfCircle = 45
    var circleX = 60
    var circleY = 150
    
    func createACircleForGame(circleX: Int, circleY: Int) {
        circle.backgroundColor = .yellow
        circle.frame = CGRect(x: circleX, y: circleY, width: diametrOfCircle, height: diametrOfCircle)
        circle.layer.cornerRadius = circle.frame.height / 2
        view.addSubview(circle)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createACircleForGame(circleX: circleX, circleY: circleY)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createACircleForGame(circleX: circleX, circleY: circleY)
    }
    
    @IBAction func moveCircleLeft(_ sender: Any) {
        guard circleX > movingOfCircle else {
            circleX = 0
            createACircleForGame(circleX: circleX, circleY: circleY)
            return
        }
        circleX -= movingOfCircle
        createACircleForGame(circleX: circleX, circleY: circleY)
    }
    
    @IBAction func moveCircleUp(_ sender: Any) {
        guard circleY > movingOfCircle else {
            circleY = 0
            createACircleForGame(circleX: circleX, circleY: circleY)
            return
        }
        circleY -= movingOfCircle
        createACircleForGame(circleX: circleX, circleY: circleY)
    }
    
    @IBAction func moveCicrleDown(_ sender: Any) {
        guard circleY < 620 - (movingOfCircle + diametrOfCircle) else {
            circleY = 620 - diametrOfCircle
            createACircleForGame(circleX: circleX, circleY: circleY)
            return
        }
        circleY += movingOfCircle
        createACircleForGame(circleX: circleX, circleY: circleY)
    }
    
    @IBAction func moveCircleRight(_ sender: Any) {
        guard circleX < 390 - (movingOfCircle + diametrOfCircle) else {
            circleX = 390 - diametrOfCircle
            createACircleForGame(circleX: circleX, circleY: circleY)
            return
        }
        circleX += movingOfCircle
        createACircleForGame(circleX: circleX, circleY: circleY)
    }
}
