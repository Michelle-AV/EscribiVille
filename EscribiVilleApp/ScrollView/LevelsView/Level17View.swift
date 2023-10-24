import SwiftUI

struct Level17View: View {
    
    @Binding var level17: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 17")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level17.toggle()
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

struct Level17View_Previews: PreviewProvider {
    static var previews: some View {
        let level17 = State(initialValue: false)
        
        return Level17View(level17: level17.projectedValue)
    }
}
