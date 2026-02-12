// A structure that conforms to View must have a computed property named body that returns one view.

// @State means: “This value may change. When it changes, update the UI.”

// $ means: “This control is connected to that stored property.”


import SwiftUI

struct CircleView: View {
    
    @State var currentCircle = Circle(radius: 10)
    
    var body: some View {
        VStack {
            // TODO: Add image later
         
            // Label for the slider
            Text("Radius")
            
            // Slider for radius input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            // Label showing the current slider value
            Text("Radius is \(currentCircle.radius.formatted())")
            
        }
    }
}

#Preview {
    CircleView()
}
