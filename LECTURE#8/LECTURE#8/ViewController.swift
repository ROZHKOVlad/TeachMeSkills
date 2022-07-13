import UIKit

private var stringForLabel: String = "truss me, daddy"

func createTransition() -> CATransition {
    let transition = CATransition()
    transition.duration = 0.6
    transition.type = CATransitionType.moveIn
    return transition
}

func setStringForLabel(_ string: String) -> String {
    let stringForLabel = string
    return stringForLabel
}

class TheBoys {
    
    let name: String
    let nickname: String
    let age: Int
    
    init(name: String = "Billy", nickname: String = "Butcher", age: Int = 50) {
        self.name = name
        self.nickname = nickname
        self.age = age
    }
    
    deinit {
        print("bye-bye")
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @IBAction
    func moveToSettings() {
        let settingsStoryBoard = UIStoryboard(name: "Settings", bundle: nil)
        let settingsViewController = settingsStoryBoard.instantiateViewController(withIdentifier: "settingsStoryBoardID")
        
        settingsViewController.modalPresentationStyle = .fullScreen
        settingsViewController.modalTransitionStyle = .coverVertical
        
        view.window!.layer.add(createTransition(), forKey: kCATransition)
        
        present(settingsViewController, animated: true) {
            print("im here")
        }
    }
}


