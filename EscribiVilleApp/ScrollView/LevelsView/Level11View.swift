import SwiftUI

struct Level11View: View {
    
    @Binding var level11: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 11")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level11.toggle()
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

struct Level11View_Previews: PreviewProvider {
    static var previews: some View {
        let level11 = State(initialValue: false)
        
        return Level11View(level11: level11.projectedValue)
    }
}
