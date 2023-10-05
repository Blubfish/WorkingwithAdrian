import SwiftUI

struct SpinningView1: View {
    
    @State var currentDegree = 0.0
    
    var body: some View {
        Button("Spins") {
            self.currentDegree += 10
            
        }
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .rotationEffect(.degrees(self.currentDegree))
        
        
        
        
        
        
    }
}
