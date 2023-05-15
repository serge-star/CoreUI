import UIKit

public struct Keyboard {
    public let duration: Double
    public let options: View.AnimationOptions
    public let height: CGFloat
    public let state: State
    public let frame: CGRect

    init?(notification: Notification) {
        guard
            let frame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue,
            let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt,
            let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double
            else { return nil }

        self.duration = duration
        self.options = [UIView.AnimationOptions(rawValue: curve), UIView.AnimationOptions.beginFromCurrentState]
        self.height = UIScreen.main.bounds.height - frame.cgRectValue.minY
        self.frame = frame.cgRectValue
        self.state = State(height: height)
    }

    func isSufficientlyDifferent(fromKeyboard keyboard: Keyboard?) -> Bool {
        guard let keyboard = keyboard else {
            return true
        }

        guard height > 100 else {
            return true
        }

        return abs(height - keyboard.height) > 10
    }
}

public extension Keyboard {
    enum State {
        case up
        case down

        init(height: CGFloat) {
            self = height < 300 ? .down : .up
        }
    }
}
