import SwiftUI

struct FirstPlayerChoice: View {
    var choice: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("Comfirm your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            VStack (spacing: 24){
                NavigationLink(destination: ChangePlayer(choice: self.choice, choice2: self.choice)) {
                        EmojiButton(emoji: "\(choice)")
                            .transition(.slide)
                    }
            }
            .padding(.top, 74)

            Spacer()
            NavigationLink(destination: MultiPlayerGame(),
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

struct FirstPlayerChoice_Previews: PreviewProvider {
    static var previews: some View {
        FirstPlayerChoice(choice: " ")
    }
}
