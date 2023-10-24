import SwiftUI

struct Level5View: View {
    
    @Binding var level5: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 5")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level5.toggle()
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

struct Level5View_Previews: PreviewProvider {
    static var previews: some View {
        let level5 = State(initialValue: false)
        
        return Level5View(level5: level5.projectedValue)
    }
}
