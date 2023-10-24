import SwiftUI

struct Level12View: View {
    
    @Binding var level12: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 12")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level12.toggle()
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

struct Level12View_Previews: PreviewProvider {
    static var previews: some View {
        let level12 = State(initialValue: false)
        
        return Level12View(level12: level12.projectedValue)
    }
}

