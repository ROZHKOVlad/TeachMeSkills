import UIKit

extension UIColor {
    static var randomColor: UIColor {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
    }
}
