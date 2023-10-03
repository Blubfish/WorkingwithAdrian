import SwiftUI

@main
struct MyApp: App {
    @State var ClickButton = true
    @State var ButtonName = "Animation"
    var body: some Scene {
        WindowGroup {
            if self.ClickButton {
                LoopsChallengeContentView()
            } else {
                AnimationChallengeContentView()
            }
            Button(action: {
                ClickButton = !ClickButton
                if self.ButtonName == "Animation"{
                    self.ButtonName = "Loops"
                }
                else{
                    self.ButtonName = "Animation"
                }
            }) {
                Text(self.ButtonName)
            }
        }
    }
}
