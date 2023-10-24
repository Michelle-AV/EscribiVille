import SwiftUI

struct Level14View: View {
    
    @Binding var level14: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 14")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level14.toggle()
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

struct Level14View_Previews: PreviewProvider {
    static var previews: some View {
        let level14 = State(initialValue: false)
        
        return Level14View(level14: level14.projectedValue)
    }
}
