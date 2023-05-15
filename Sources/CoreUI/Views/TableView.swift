import UIKit

open class TableView: UITableView {
 
    // MARK: - Initialization.
    
    public init(style: UITableView.Style, then completion: ((_ tableView: TableView) -> Void)?) {
        super.init(frame: .zero, style: style)
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
}
