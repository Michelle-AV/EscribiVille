import SwiftUI

struct MenuView: View {
    
    @State var begin: Bool = false
    
    var body: some View {
        ZStack{ 
            GIFImage("bckMenu")
                .frame(width: UIScreen.main.bounds.width, height: 650)
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.5)
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .frame(width: UIScreen.main.bounds.width * 0.32, height: UIScreen.main.bounds.height * 0.13)
                    .padding(.bottom, 260)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    .padding(.bottom, 160)
                
                Button{
                    begin.toggle()
                } label: {
                    Text("Empezar".uppercased())
                        .font(.callout)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 35)
                        .padding(.vertical)
                }.background(Color(UIColor(red: 0.03, green: 0.16, blue: 0.34, alpha: 1.00)))
                    .cornerRadius(15)
                    .padding(.bottom, 50)
                    .padding(.leading, 22)
            }
            
            ContentView()
                .offset(x: begin ? 0 : UIScreen.main.bounds.width + 500)
                .animation(.spring(duration: 0.2))
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [
                Color(UIColor(red: 0.53, green: 0.72, blue: 0.97, alpha: 1.00)),
                Color(UIColor(red: 0.61, green: 0.77, blue: 0.95, alpha: 1.00)),
                Color(UIColor(red: 0.77, green: 0.91, blue: 0.96, alpha: 1.00)),
                Color(UIColor(red: 0.75, green: 0.89, blue: 0.92, alpha: 1.00))
            ]),
                startPoint: .top,
                endPoint: .bottom)
            )
        .ignoresSafeArea()
    }
}

#Preview {
    MenuView()
}
