import UIKit

class ViewController5: UIViewController {

    let lengthOfSquareSide: Int = 78
    var view1X: Int = 0
    var view1Y: Int = 0
    enum Colors: CaseIterable {
        case yellow
        case green
        case blue
        case red
        case gray
        case purple
        case pink
        case orange
    }

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
    
    @IBAction func generateSquaresWithLabel(_ sender: Any) {
        while view1Y < 600 {
            let view1 = UIView()
            let labelWithColor = UILabel()
            view1.frame = CGRect(x: view1X, y: view1Y, width: lengthOfSquareSide, height: lengthOfSquareSide)
            view.addSubview(view1)
            let labelColor = Colors.allCases.randomElement()!
            switch labelColor {
            case .yellow:
                labelWithColor.text = "yellow"
                view1.backgroundColor = .yellow
            case .green:
                labelWithColor.text = "green"
                view1.backgroundColor = .green
            case .blue:
                labelWithColor.text = "blue"
                view1.backgroundColor = .blue
            case .red:
                labelWithColor.text = "red"
                view1.backgroundColor = .red
            case .pink:
                labelWithColor.text = "pink"
                view1.backgroundColor = .systemPink
            case .gray:
                labelWithColor.text = "grey"
                view1.backgroundColor = .gray
            case .purple:
                labelWithColor.text = "purple"
                view1.backgroundColor = .purple
            case .orange:
                labelWithColor.text = "orange"
                view1.backgroundColor = .orange
            }
            labelWithColor.textColor = .black
            labelWithColor.textAlignment = .center
            labelWithColor.frame = view1.bounds
            view1.addSubview(labelWithColor)
            view1X += lengthOfSquareSide
            if view1X == Int(view.frame.maxX) {
                view1X = 0
                view1Y += lengthOfSquareSide
            }
        }
        view1X = 0
        view1Y = 0
    }
}
