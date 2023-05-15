import UIKit

open class StackView: UIStackView {
    
    // MARK: - Initialization.
    
    public convenience init(subviews: [UIView], then completion: ((_ stackView: UIStackView) -> Void)? = nil) {
        self.init(arrangedSubviews: subviews)
        completion?(self)
    }
    
}
