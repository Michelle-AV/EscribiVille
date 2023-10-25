import SwiftUI

struct Level5View: View {
    
    @Binding var level5: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    @State var posiBuhoX: CGFloat = UIScreen.main.bounds.width * 0.25
    @State var posiBuhoY: CGFloat = UIScreen.main.bounds.height * 0.58
    
    @State var posiPajaroX: CGFloat = UIScreen.main.bounds.width * 0.5
    @State var posiPajaroY: CGFloat = UIScreen.main.bounds.height * 0.58
    
    @State var posiConejoX: CGFloat = UIScreen.main.bounds.width * 0.75
    @State var posiConejoY: CGFloat = UIScreen.main.bounds.height * 0.58
    
//    @State var posiPajaroX: CGFloat = UIScreen.main.bounds.width * 0.35
//    @State var posiPajaroY: CGFloat = UIScreen.main.bounds.height * 0.58
//    
//    @State var posiConejoX: CGFloat = UIScreen.main.bounds.width * 0.65
//    @State var posiConejoY: CGFloat = UIScreen.main.bounds.height * 0.58
    
    @State var instruccion: String = "Selecciona al búho"
    
    var cardSize: CGFloat = UIScreen.main.bounds.width * 0.23
    var topText: CGFloat = 320
    
    @State var respuestas: Int = 0
    
    var body: some View {
        ZStack{
            
            Image("base5")
                .resizable()
                .scaledToFill()
            
            Text("\(instruccion)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(Color.Gris)
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.16)
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.045)
                .position(x: UIScreen.main.bounds.width * 0.06, y: UIScreen.main.bounds.height * 0.09)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level5.toggle()
                        respuestas = 0
                        posiBuhoX = UIScreen.main.bounds.width * 0.25
                        posiConejoX = UIScreen.main.bounds.width * 0.75
                        posiPajaroX = UIScreen.main.bounds.width * 0.5
                        instruccion = "Selecciona al búho"
                    }
                }
            
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.045)
                .position(x: UIScreen.main.bounds.width * 0.94, y: UIScreen.main.bounds.height * 0.09)
                .onTapGesture {
                    isMute.toggle()
                }
            
            ZStack{
                Image("conejoCard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("Robbin")
                    .font(.custom("futura", fixedSize: 40))
                    .bold()
                    .foregroundStyle(Color.Gris)
                    .padding(.top, topText)
                
            }.position(x: posiConejoX, y: posiConejoY)
                .onTapGesture {
                    if(respuestas == 1){
                        withAnimation(.spring(duration: 1)) {
                            posiConejoX = UIScreen.main.bounds.width * 1.65
                            posiPajaroX = UIScreen.main.bounds.width * 0.5
                        }
                        respuestas = 2
                        instruccion = "Selecciona al pajaro"
                    } else {
                        withAnimation(.spring) {
                            let duration = 0.1  // Duración de cada oscilación
                            let numberOfOscillations = 5  // Número de oscilaciones
                            let distance = UIScreen.main.bounds.width * -0.002  // Distancia a oscilar

                            for _ in 0..<numberOfOscillations {
                                posiConejoX += distance
                                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                                    posiConejoX -= distance
                                }
                            }
                        }
                    }
                }
            
            ZStack{
                Image("pajaroCard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("Mati")
                    .font(.custom("futura", fixedSize: 40))
                    .bold()
                    .foregroundStyle(Color.Gris)
                    .padding(.top, topText)
            }.position(x: posiPajaroX, y: posiPajaroY)
                .onTapGesture {
                    if(respuestas == 2){
                        withAnimation(.spring(duration: 1)) {
                            posiPajaroX = UIScreen.main.bounds.width * -1
                        }
                        respuestas = 3
                        instruccion = "Bien Hecho :D"
                        checkCorrect()
                    } else {
                        withAnimation(.spring) {
                            let duration = 0.1  // Duración de cada oscilación
                            let numberOfOscillations = 5  // Número de oscilaciones
                            let distance = UIScreen.main.bounds.width * 0.002  // Distancia a oscilar

                            for _ in 0..<numberOfOscillations {
                                posiPajaroX += distance
                                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                                    posiPajaroX -= distance
                                }
                            }
                        }
                    }
                }
            
            ZStack{
                Image("buhoCard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("Carl")
                    .font(.custom("futura", fixedSize: 40))
                    .bold()
                    .foregroundStyle(Color.Gris)
                    .padding(.top, topText)
            }.position(x: posiBuhoX, y: posiBuhoY)
                .onTapGesture {
                    if(respuestas == 0){
                        withAnimation(.spring(duration: 1)) {
                            posiBuhoX = UIScreen.main.bounds.width * -1
                            posiConejoX = UIScreen.main.bounds.width * 0.35
                            posiPajaroX = UIScreen.main.bounds.width * 0.65
                        }
                        respuestas = 1
                        instruccion = "Selecciona al conejo"
                    } else {
                        withAnimation(.spring) {
                            let duration = 0.1  // Duración de cada oscilación
                            let numberOfOscillations = 5  // Número de oscilaciones
                            let distance = UIScreen.main.bounds.width * 0.002  // Distancia a oscilar

                            for _ in 0..<numberOfOscillations {
                                posiBuhoX += distance
                                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                                    posiBuhoX -= distance
                                }
                            }
                        }
                    }
                }
            
            ZStack{
               Text("Respuestas correctas: \(respuestas)/3")
                    .font(.custom("futura", fixedSize: 30))
                    .bold()
                    .foregroundStyle(Color.Gris)
                HStack(spacing: UIScreen.main.bounds.width * 0.45){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                }.padding(.bottom, 45)
                
                HStack(spacing: UIScreen.main.bounds.width * 0.45){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                }.padding(.top,45)
                
            }.frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.1)
                .background(Color.Blanco)
                .cornerRadius(20)
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.91)
            
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
        }.ignoresSafeArea()
    }
    
    func checkCorrect(){
        isCorrect.toggle()
        SoundManager.instance.playSound()

    }
}

struct Level5View_Previews: PreviewProvider {
    static var previews: some View {
        let level5 = State(initialValue: false)
        
        return Level5View(level5: level5.projectedValue)
    }
}

