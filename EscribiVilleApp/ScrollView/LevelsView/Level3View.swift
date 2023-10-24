import SwiftUI

struct Level3View: View {
    
    @Binding var level3: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 3")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level3.toggle()
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

struct Level3View_Previews: PreviewProvider {
    static var previews: some View {
        let level3 = State(initialValue: false)
        
        return Level3View(level3: level3.projectedValue)
    }
}
