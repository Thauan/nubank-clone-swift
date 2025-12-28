import SwiftUI

struct AnimatedMask: AnimatableModifier {
    var phase: CGFloat = 0
    
    var animatableData: CGFloat {
        get { phase }
        set { phase = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .mask(
                GradientMask(phase: phase)
                    .scaleEffect(3)
            )
    }
}
