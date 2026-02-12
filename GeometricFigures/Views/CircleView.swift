// A structure that conforms to View must have a computed property named body that returns one view.

import SwiftUI

struct CircleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircleView()
}
