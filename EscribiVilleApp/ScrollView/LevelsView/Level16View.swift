import SwiftUI

struct Level16View: View {
    
    @Binding var level16: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 16")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level16.toggle()
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

struct Level16View_Previews: PreviewProvider {
    static var previews: some View {
        let level16 = State(initialValue: false)
        
        return Level16View(level16: level16.projectedValue)
    }
}
