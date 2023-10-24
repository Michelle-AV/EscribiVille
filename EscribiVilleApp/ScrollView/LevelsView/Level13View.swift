import SwiftUI

struct Level13View: View {
    
    @Binding var level13: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 13")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level13.toggle()
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

struct Level13View_Previews: PreviewProvider {
    static var previews: some View {
        let level13 = State(initialValue: false)
        
        return Level13View(level13: level13.projectedValue)
    }
}
