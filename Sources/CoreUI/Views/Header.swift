import UIKit

public class Header: UIView {
    
    // MARK: - UI Properties.
    
    private let backgroundView = UIView(frame: .zero)
    private let separator = Divider()
    
    // MARK: - Initialization.
    
    public init(options: Set<Option>) {
        super.init(frame: .zero)
        
        addSubview(backgroundView)
        backgroundView.snp.makeConstraints {
            $0.edges.equalTo(self)
        }
        
        addSubview(separator)
        separator.snp.makeConstraints {
            $0.leading.equalTo(self)
            $0.trailing.equalTo(self)
            $0.bottom.equalTo(self)
        }
        
        for option in options {
            switch option {
            case .backgroundColor (let color):
                backgroundView.backgroundColor = color
            case .separatorColor (let color):
                separator.backgroundColor = color
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

public extension Header {
    enum Option: Hashable {
        case backgroundColor (UIColor)
        case separatorColor (UIColor)
    }
}
