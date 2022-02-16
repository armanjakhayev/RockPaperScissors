import SwiftUI

struct Start: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("BackgroundImage")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 0){
                    Text("Welcome to the game!")
                        .font(.system(size: 54))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 122)
                    Spacer()
                    NavigationLink(destination: SinglePlayerGame(),
                                       label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Color("MyViolet"))
                                    Text("Single player")
                                        .foregroundColor(.white)
                                }.frame(height: 50)
                        })
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle(" ")
                    NavigationLink(destination: MultiPlayerGame(),
                                       label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("MyViolet"))
                            Text("Multi player")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                        
                    }).padding(.top,10)
                        .padding(.bottom, 40)
                    
                }
                .padding(.horizontal)
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
