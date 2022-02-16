import SwiftUI

struct ChangePlayer: View {
    var choice: String
    var choice2: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("Pass the phone to your opponent")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            Spacer()
            NavigationLink(destination: SecondPlayerChoice(choice: self.choice, choice2: self.choice2),
                               label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("MyViolet"))
                            Text("Ready to continue")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct ChangePlayer_Previews: PreviewProvider {
    static var previews: some View {
        ChangePlayer(choice: " ", choice2: " ")
    }
}
