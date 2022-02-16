import SwiftUI

struct SecondPlayerChoice: View {
    var choice: String
    var choice2: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            VStack (spacing: 24){
                NavigationLink(destination: ResultMultiPlayerGame(choice: self.choice, choice2: "🗿")) {
                        EmojiButton(emoji: "🗿")
                }
                NavigationLink(destination: ResultMultiPlayerGame(choice: self.choice, choice2: "📃")) {
                        EmojiButton(emoji: "📃")
                    }
                NavigationLink(destination: ResultMultiPlayerGame(choice: self.choice, choice2: "✂️")) {
                        EmojiButton(emoji: "✂️")
                    }
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct SecondPlayerChoice_Previews: PreviewProvider {
    static var previews: some View {
        SecondPlayerChoice(choice: " ", choice2: " ")
    }
}
