import UIKit

open class TextField: UITextField {
    
    // MARK: - Initialization.
    
    public init(then completion: ((TextField) -> Void)? = nil) {
        super.init(frame: .zero)
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
}
