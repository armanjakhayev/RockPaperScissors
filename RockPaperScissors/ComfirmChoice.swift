import SwiftUI

struct ComfirmChoice: View {
    @State var showAppChoice = false
    var choice: String
    
    var body: some View {
        VStack(spacing: 0){
        Text("Comfirm your pick")
            .font(.system(size: 54))
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .padding(.top, 120)
        VStack (spacing: 24){
                NavigationLink(destination: OpponentTime(choice: self.choice)) {
                    EmojiButton(emoji: "\(choice)")
                        .transition(.slide)
                }
        }
        .padding(.top, 74)

        Spacer()
        NavigationLink(destination: SinglePlayerGame(),
                           label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("MyViolet"))
                        Text("I changed my mind")
                            .foregroundColor(.white)
                    }.frame(height: 50)
            }).padding(.bottom, 40)
    }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
}
}

struct ComfirmChoice_Previews: PreviewProvider {
    static var previews: some View {
        ComfirmChoice(choice: " ")
    }
}
