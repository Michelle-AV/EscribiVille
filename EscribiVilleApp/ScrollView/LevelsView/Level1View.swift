import SwiftUI

struct Level1View: View {
    
    @Binding var level1: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 1")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level1.toggle()
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

struct Level1View_Previews: PreviewProvider {
    static var previews: some View {
        let level1 = State(initialValue: false)
        
        return Level1View(level1: level1.projectedValue)
    }
}

