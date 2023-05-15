import UIKit

open class SegmentedControl: UISegmentedControl {
    
    // MARK: - Initialization.
    
    public init(then completion: ((UISegmentedControl) -> Void)? = nil) {
        super.init(frame: .zero)
        completion?(self)
    }
    
    public init() {
        super.init(frame: .zero)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
        
}
