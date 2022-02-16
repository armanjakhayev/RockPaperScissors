import SwiftUI

struct OpponentTime: View {
    @State private var rotate = -135
    @State private var drawErase = 0
    @State private var isAnimating = false
    @State var showAppChoice = false
    var choice: String
    
    var body: some View {
        VStack(spacing: 0){
            NavigationLink(isActive: $showAppChoice) {
                OpponentChoice(showPageSix: false, choice: self.choice)
            } label: {
                EmptyView()
            }
            Text("Your opponent is thinking")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
                .multilineTextAlignment(.center)
            VStack (spacing: 24){
                Button (action: {}) {
                    ZStack{
                        Capsule()
                            .fill(Color("MyPurple"))
                            .frame(height: 128)
                            .animation(Animation.timingCurve(0.68, -0.6, 0.32, 1.6).speed(0.2).repeatForever(autoreverses: true))
                            .task {
                                rotate = 405
                                drawErase = 1
                            }
                        Image("Download")
                            .font(.system(size: 80))
                            .rotationEffect(.degrees(Double(rotate)))
                            .animation(Animation.timingCurve(0.68, -0.6, 0.32, 1.6).speed(0.2).repeatForever(autoreverses: true))
                    }
                    .padding(.horizontal, 24)
                }
               
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                showAppChoice = true
            }
        }
    }
}

struct OpponentTime_Previews: PreviewProvider {
    static var previews: some View {
        OpponentTime(choice: " ")
    }
}
