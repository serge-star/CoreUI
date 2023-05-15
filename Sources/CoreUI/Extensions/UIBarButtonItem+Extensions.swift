import UIKit

extension UIBarButtonItem {
    public func setCustomFont(_ font: UIFont, withColor color: UIColor) {
        let attributes = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: color
        ]

        setTitleTextAttributes(attributes, for: .normal)
        setTitleTextAttributes(attributes, for: .selected)
        setTitleTextAttributes(attributes, for: .highlighted)
        setTitleTextAttributes(attributes, for: .reserved)
        setTitleTextAttributes(attributes, for: .focused)
        setTitleTextAttributes(attributes, for: .disabled)
        setTitleTextAttributes(attributes, for: .application)
    }
}
