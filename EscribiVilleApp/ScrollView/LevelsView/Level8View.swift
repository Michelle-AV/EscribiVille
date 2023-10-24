import SwiftUI

struct Level8View: View {
    
    @Binding var level8: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 8")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level8.toggle()
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

struct Level8View_Previews: PreviewProvider {
    static var previews: some View {
        let level8 = State(initialValue: false)
        
        return Level8View(level8: level8.projectedValue)
    }
}
