import SwiftUI

struct ResultMultiPlayerGame: View {
    var choice: String
    var choice2: String
    
    var body: some View {
        
        VStack(spacing: 0){
            resultTextMulti(choice: self.choice, choice2: self.choice2)
            ZStack{
                HStack{
                    Button (action: {}) {
                        EmojiButtonSmall(emoji: "\(choice)" )
                    }
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button (action: {}) {
                        EmojiButtonSmall(emoji: "\(choice2)")
                    }.padding(.top, 80)
                    
                }
            }
            .padding(.top, 134)
            Spacer()
            NavigationLink(destination: MultiPlayerGame(),
                               label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("MyViolet"))
                            Text("Another round")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct resultTextMulti: View{
    var choice: String
    var choice2: String
    
    var body: some View {
        if choice == "🗿" && choice2 == "📃" {
            LinearGradient(gradient: Gradient(colors: [Color("MyPink"), Color("MyRed")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Lose (")).frame(height: 58)
            .padding(.top, 120)
        } else if choice == "🗿" && choice2 == "✂️" {
            LinearGradient(gradient: Gradient(colors: [Color("MySalad"), Color("MyGreen")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Win!")).frame(height: 58)
            .padding(.top, 120)
        }  else if choice == "📃" && choice2 == "✂️" {
            LinearGradient(gradient: Gradient(colors: [Color("MyPink"), Color("MyRed")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Lose (")).frame(height: 58)
            .padding(.top, 120)
        } else if choice == "📃" && choice2 == "🗿" {
            LinearGradient(gradient: Gradient(colors: [Color("MySalad"), Color("MyGreen")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Win!")).frame(height: 58)
            .padding(.top, 120)
        } else if choice == "✂️" && choice2 == "🗿" {
            LinearGradient(gradient: Gradient(colors: [Color("MyPink"), Color("MyRed")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Lose (")).frame(height: 58)
            .padding(.top, 120)
        } else if choice == "✂️" && choice2 == "📃" {
            LinearGradient(gradient: Gradient(colors: [Color("MySalad"), Color("MyGreen")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Win!")).frame(height: 58)
            .padding(.top, 120)
        } else {
                LinearGradient(gradient: Gradient(colors: [Color("MyYellow"), Color("MyOrange")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Tie!")).frame(height: 58)
                .padding(.top, 120)
        }
    }
}


struct ResultMultiPlayerGame_Previews: PreviewProvider {
    static var previews: some View {
        ResultMultiPlayerGame(choice: " ", choice2: " ")
    }
}
