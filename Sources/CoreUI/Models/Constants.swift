import UIKit

public let kDefaultContentSpacing: CGFloat = {
    
    // I'm not sure if this is a good idea or not. I found no other way to know layout insets before the window is made visible.
    // But there's a need to specify values before that (e.g., spacing in stackViews),
    // which causes a lot of weird dynamic code just to update a vertical spacing for a few points
    // (horizontal spacing is easier since you can connect to layoutMarginsGuides in majority of cases).
    // 05 July, 2020 (vz@moleculus.ru)
        
    let newWindow = UIWindow()
    newWindow.rootViewController = UIViewController()
    newWindow.makeKeyAndVisible()
    newWindow.isHidden = true
    
    return (newWindow.rootViewController?.systemMinimumLayoutMargins ?? .zero).leading
}()
