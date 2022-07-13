import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    @IBAction func closeSettings() {
        dismiss(animated: true) {
            print("hell na")
        }
    }
    @IBAction func moveToSettingsVolume(_ sender: Any) {
        let settingsVolumeStoryBoard = UIStoryboard(name: "SettingsVolume", bundle: nil)
        let settingsVolumeViewController = settingsVolumeStoryBoard.instantiateViewController(withIdentifier: "settingsVolumeStoryBoardID")
        
        settingsVolumeViewController.modalPresentationStyle = .fullScreen
        settingsVolumeViewController.modalTransitionStyle = .coverVertical
        
        view.window!.layer.add(createTransition(), forKey: kCATransition)
        
        present(settingsVolumeViewController, animated: true) {
            print("im here")
        }
    }
}

