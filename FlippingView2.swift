import SwiftUI

struct FlippingView2: View {
    
    @State var currentRotation = 0.0
    
    var body: some View {
        Button(action: {
            currentRotation += 180

        }, label: {
            Text("Flips")
                .frame(width: 100, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .rotation3DEffect(.degrees(self.currentRotation), axis: (x: 0.0, y: 1.0, z: 0.0))
                
            
            
            
            
        })
    }
}
