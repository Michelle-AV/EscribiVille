import SwiftUI

struct Level2View: View {
    
    @Binding var level2: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 2")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level2.toggle()
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

struct Level2View_Previews: PreviewProvider {
    static var previews: some View {
        let level2 = State(initialValue: false)
        
        return Level2View(level2: level2.projectedValue)
    }
}
