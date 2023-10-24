import SwiftUI

struct Level18View: View {
    
    @Binding var level18: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 18")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level18.toggle()
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

struct Level18View_Previews: PreviewProvider {
    static var previews: some View {
        let level18 = State(initialValue: false)
        
        return Level18View(level18: level18.projectedValue)
    }
}
