import SwiftUI

struct MultiPlayerGame: View {
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            VStack (spacing: 24){
                    NavigationLink(destination: FirstPlayerChoice(choice: "🗿")) {
                        EmojiButton(emoji: "🗿")
                }
                    NavigationLink(destination: FirstPlayerChoice(choice: "📃")) {
                        EmojiButton(emoji: "📃")
                    }
                    NavigationLink(destination: FirstPlayerChoice(choice: "✂️")) {
                        EmojiButton(emoji: "✂️")
                    }
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MultiPlayerGame_Previews: PreviewProvider {
    static var previews: some View {
        MultiPlayerGame()
    }
}
