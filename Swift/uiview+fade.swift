//
// UIView+fade.swift
//

extension UIView {
    func fade(out: Bool, duration: Double = 0.4) {
        alpha = out ? 1 : 0
        UIView.animate(withDuration: duration) {
            self.alpha = out ? 0 : 1
        }
    }

    func fadeIn() {
        fade(out: false)
    }

    func fadeOut() {
        fade(out: true)
    }
}
