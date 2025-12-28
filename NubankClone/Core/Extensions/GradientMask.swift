
import SwiftUI

struct GradientMask: View {
    let phase: CGFloat
    let centerColor: Color = Color.black.opacity(0.5)
    let edgeColor: Color = Color.black.opacity(1)
    
    var body: some View {
        GeometryReader { geometry in
            LinearGradient(
                gradient: Gradient(
                    stops: [
                        .init(color: edgeColor, location: phase),
                        .init(color: centerColor, location: phase + 0.1),
                        .init(color: edgeColor, location: phase + 0.2)
                    ]
                ),
                startPoint: UnitPoint(x: 0, y: 0.5),
                endPoint: UnitPoint(x: 1, y: 0.5)
            )
            .rotationEffect(.degrees(-45))
            .offset(x: -geometry.size.width, y: -geometry.size.height)
            .frame(width: geometry.size.width * 3, height: geometry.size.height * 3)
        }
    }
}
