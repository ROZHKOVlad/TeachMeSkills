import UIKit

class SettingsVolumeViewController: UIViewController {
    
    let labelForString: UILabel = UILabel()
    let labelForClassProperties: UILabel = UILabel()
    
    let frenchie = TheBoys(name: "None", nickname: "Frenchie", age: 34)
    
    func createLabel(label: UILabel, width: Int, height: Int, labelsY: Int){
        let labelsX: Int = Int(view.layer.frame.midX) - width / 2
        label.textAlignment = .center
        label.textColor = .yellow
        label.backgroundColor = .darkGray
        label.frame = CGRect(x: labelsX, y: labelsY, width: width, height: height)
        view.addSubview(label)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        labelForString.text = setStringForLabel("you can call me Gus!")
        createLabel(label: labelForString, width: 200, height: 50, labelsY: 250)
        createLabel(label: labelForClassProperties, width: 150, height: 50, labelsY: 350)
        labelForClassProperties.text = frenchie.nickname + " " + frenchie.name + " " + String(frenchie.age)
    }
    
    @IBAction func closeSettings() {
        dismiss(animated: true) {
            print("hell na")
        }
    }
}
