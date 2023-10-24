import SwiftUI

struct Level9View: View {
    
    @Binding var level9: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 9")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level9.toggle()
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

struct Level9View_Previews: PreviewProvider {
    static var previews: some View {
        let level9 = State(initialValue: false)
        
        return Level9View(level9: level9.projectedValue)
    }
}
