import SwiftUI

struct Level15View: View {
    
    @Binding var level15: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 15")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level15.toggle()
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

struct Level15View_Previews: PreviewProvider {
    static var previews: some View {
        let level15 = State(initialValue: false)
        
        return Level15View(level15: level15.projectedValue)
    }
}
