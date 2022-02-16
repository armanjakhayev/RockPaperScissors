import SwiftUI

struct SinglePlayerGame: View {
    
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            VStack (spacing: 24){
                    NavigationLink(destination: ComfirmChoice(choice: "🗿")) {
                        EmojiButton(emoji: "🗿")
                }
                    NavigationLink(destination: ComfirmChoice(choice: "📃")) {
                        EmojiButton(emoji: "📃")
                    }
                    NavigationLink(destination: ComfirmChoice(choice: "✂️")) {
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

struct EmojiButton: View{
    let emoji: String
    
    var body: some View {
        ZStack{
            Capsule()
                .fill(Color("MyPurple"))
                .frame(height: 128)
            Text(emoji)
                .font(.system(size: 80))
        }
        .padding(.horizontal, 24)
    }
}

struct SinglePlayerGame_Previews: PreviewProvider {
    static var previews: some View {
        SinglePlayerGame()
    }
}
