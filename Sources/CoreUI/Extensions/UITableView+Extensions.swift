import UIKit

public extension UITableView {
    func dequeueCell<T: ReusableView>(withReusableView: T.Type, forIndexPath indexPath: IndexPath, then completion: ((_ view: T) -> Void)?) -> TableViewCell<T> {
        let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! TableViewCell<T>
        completion?(cell.customView)
        return cell
    }
    
    func register<T>(cellWithReusableView: T.Type) where T: View {
        register(TableViewCell<T>.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
}
