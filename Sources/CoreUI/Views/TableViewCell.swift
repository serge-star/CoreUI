import UIKit
import SnapKit

public class TableViewCell<CustomView>: UITableViewCell where CustomView: View {
    
    // MARK: - UI Properties.
    
    public let customView = CustomView(then: nil)
    
    // MARK: - Initialization.
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        clipsToBounds = false
        
        contentView.addSubview(customView)
        customView.snp.makeConstraints {
            $0.edges.equalTo(contentView)
        }
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
    // MARK: - Lifecycle.
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        customView.prepareForReuse()
    }
    
}
