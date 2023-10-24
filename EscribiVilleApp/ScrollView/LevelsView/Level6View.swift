import SwiftUI

struct Level6View: View {
    
    @Binding var level6: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 6")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level6.toggle()
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

struct Level6View_Previews: PreviewProvider {
    static var previews: some View {
        let level6 = State(initialValue: false)
        
        return Level6View(level6: level6.projectedValue)
    }
}

