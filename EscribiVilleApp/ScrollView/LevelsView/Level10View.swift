import SwiftUI

struct Level10View: View {
    
    @Binding var level10: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 10")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level10.toggle()
                } label: {
                    Text("Cerrar")
                        .font(.title)
                        .bold()
                }

            }
        }.ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.white)
    }
}

struct Level10View_Previews: PreviewProvider {
    static var previews: some View {
        let level10 = State(initialValue: false)
        
        return Level10View(level10: level10.projectedValue)
    }
}
