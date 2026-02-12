// A structure that conforms to View must have a computed property named body that returns one view.

// @State means: “This value may change. When it changes, update the UI.”

// $ means: “This control is connected to that stored property.”

// Every program you write can be described as: Input → Processing → Output In this app: Input: the slider (user chooses a radius) Processing: the computed properties in the Circle model Output: the text views that show radius/diameter/area/circumference


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
            
            // Label showing other information about the circle
            Text("Diameter is \(currentCircle.diameter.formatted())")
            Text("Area is \(currentCircle.area.formatted())")
            Text("Circumference is \(currentCircle.circumference.formatted())")
            
        }
    }
}

#Preview {
    CircleView()
}
