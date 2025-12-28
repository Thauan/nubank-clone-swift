import SwiftUICore

public extension View {
    func skeleton<S>(
        _ shape: S? = nil as Rectangle?,
        isLoading: Bool
    ) -> some View where S : Shape {
        guard isLoading else { return AnyView(self) }
        let skeletonColor = Color.gray.opacity(0.3)
        
        let skeletonShape: AnyShape = if let shape {
            AnyShape(shape)
        } else {
          AnyShape(Rectangle())
        }
        
        return AnyView(
            opacity(0)
                .overlay(skeletonShape.fill(skeletonColor))
                .shimmering()
        )
    }
    
    func shimmering() -> some View {
        modifier(ShimmeringModifier())
    }
}
