import SwiftUI

struct Level7View: View {
    
    @Binding var level7: Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Nivel 7")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Button {
                    level7.toggle()
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

struct Level7View_Previews: PreviewProvider {
    static var previews: some View {
        let level7 = State(initialValue: false)
        
        return Level7View(level7: level7.projectedValue)
    }
}
