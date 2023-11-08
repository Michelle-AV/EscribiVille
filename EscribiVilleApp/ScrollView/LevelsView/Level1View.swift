
import SwiftUI

struct Level1View: View {
    
    @Binding var level1: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    //variables de las cartas
    @State var isCard1: Bool = true
    @State var isCard2: Bool = false
    @State var isCard3: Bool = false
    @State var isCard4: Bool = false
    @State var isCard5: Bool = false
    @State var isCard6: Bool = false

    //variables para que las cartas empicen en el mismo punto de pantalla (una encima de la otra)
    @State var startCardsX: CGFloat = UIScreen.main.bounds.width * 0.5
    @State var startCardsY: CGFloat = UIScreen.main.bounds.width * 0.34

    //variables para que la carta mueva su posicion horizontalmente (1 c/carta)
    @State var currentCard1X: CGFloat = 0
    @State var currentCard2X: CGFloat = 0
    @State var currentCard3X: CGFloat = 0
    @State var currentCard4X: CGFloat = 0
    @State var currentCard5X: CGFloat = 0
    @State var currentCard6X: CGFloat = 0
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height

    var body: some View {
        
        ZStack{
            Color.black.opacity(0.6)
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.055)
                .position(x: UIScreen.main.bounds.width * 0.04, y: UIScreen.main.bounds.height * 0.06)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level1.toggle()
                    }
                }
            
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.055)
                .position(x: UIScreen.main.bounds.width * 0.96, y: UIScreen.main.bounds.height * 0.06)
                .onTapGesture {
                    isMute.toggle()
                }
        
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.CafeOscuro)
                    .frame(width: UISW * 0.89, height: UISH * 0.862)
                    .padding(.bottom,-30)
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color(uiColor: UIColor(red: 0.72, green: 0.72, blue: 0.72, alpha: 1.00)))
                .frame(width: UISW * 0.83, height: UISH * 0.626)
//                .padding(.bottom,-0)
            
            //CARTA 6 --------------------------------------------------
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.Blanco)
                    .frame(width: UISW * 0.83, height: UISH * 0.66)
                    .padding(.top, -35)
                HStack{
                    Image("6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.28)
                        .padding(.top, -20)
                    
                    VStack (spacing: 50) {
                        
                        Text("Desde entonces, Tito y su amigo pajarito vivieron aventuras felices. Tito sabía que no importa cuán pequeño seas, ¡puedes hacer cosas asombrosas!")
                            .font(.custom("futura", fixedSize: 25))
                        
                        Text("FIN.")
                            .font(.custom("futura", fixedSize: 50))
                    
                    }
                    .foregroundStyle(Color.CafeOscuro)
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    .frame(width: 400, height: 400)
                    .padding(.leading, 50)
                }

            }
            .position(x: startCardsX, y: startCardsY)
            .offset(x: currentCard6X, y: UIScreen.main.bounds.height * 0)
            // FIN CARTA ------------------------------------------------
            
            
            //CARTA 5 --------------------------------------------------
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(Color.Blanco)
                        .frame(width: UISW * 0.83, height: UISH * 0.66)
                        .padding(.top, -35)
                ZStack{
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.58)
                        .padding(.top, -20)
                    
                    VStack {
                        Text("Tito aprendió que ser valiente significa ayudar a los amigos, ¡y eso lo convirtió en un héroe en su mundo!")
                            .font(.custom("futura", fixedSize: 20))
                            .bold()
                        .foregroundStyle(Color.CafeOscuro)
                        .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    }
                    .frame(width: UISW * 0.7, height: UISH * 0.1)
                    .background(Color.white)
                    .position(x: UISW * 0.5, y: UISH * 0.73)
                    
                }

            }
            .position(x: startCardsX, y: startCardsY)
            .offset(x: currentCard5X, y: UIScreen.main.bounds.height * 0)
            // FIN CARTA ------------------------------------------------

            //CARTA 4 --------------------------------------------------
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.Blanco)
                    .frame(width: UISW * 0.83, height: UISH * 0.66)
                    .padding(.top, -35)
                HStack (spacing: 80) {
                    Image("4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.26)
                        .padding(.top, -25)
//                        .padding(.leading, -20)
                    
                    VStack {
                        Text("Tito lo cuidó y lo hizo sentir mejor. Se hicieron amigos y juntos descubrieron el bosque.")
                            .font(.custom("futura", fixedSize: 25))
                            .bold()
                        .foregroundStyle(Color.CafeOscuro)
                        .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    }
                    .frame(width: 400, height: 400)
//                    .padding(.leading, 30)
                }

            }
            .position(x: startCardsX, y: startCardsY)
            .offset(x: currentCard4X, y: UIScreen.main.bounds.height * 0)
            //FIN CARTA ------------------------------------------------

            
            //CARTA 3 --------------------------------------------------
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.Blanco)
                    .frame(width: UISW * 0.83, height: UISH * 0.66)
                    .padding(.top, -35)
                
                HStack {
                     VStack {
                        Text("Un día, mientras jugaba, Tito encontró un pajarito que se sentía triste.")
                            .font(.custom("futura", fixedSize: 25))
                            .bold()
                        .foregroundStyle(Color.CafeOscuro)
                        .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    }
                    .frame(width: 400, height: 400)
                    .padding(.trailing, 50)
                    
                    Image("3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.28)
                        .padding(.top, -50)
                }

            }
            .position(x: startCardsX, y: startCardsY)
            .offset(x: currentCard3X, y: UIScreen.main.bounds.height * 0)
            //FIN CARTA ------------------------------------------------

            
            //CARTA 2 --------------------------------------------------
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(Color.Blanco)
                        .frame(width: UISW * 0.83, height: UISH * 0.66)
                        .padding(.top, -35)
                ZStack{
                    Image("2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.64)
                    
                    VStack {
                        Text("A Tito le gustaba mucho explorar, pero a veces se sentía asustado porque era pequeñito.")
                            .font(.custom("futura", fixedSize: 20))
                            .bold()
                        .foregroundStyle(Color.CafeOscuro)
                        .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    }
                    .frame(width: UISW * 0.7, height: UISH * 0.1)
                    .background(Color.white)
                    .position(x: UISW * 0.5, y: UISH * 0.701)
                    
                }

            }
            .position(x: startCardsX, y: startCardsY)
            .offset(x: currentCard2X, y: UIScreen.main.bounds.height * 0)
            //FIN CARTA ------------------------------------------------

            
            //CARTA 1 --------------------------------------------------
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.Blanco)
                    .frame(width: UISW * 0.83, height: UISH * 0.66)
                    .padding(.top, -35)
                
                HStack{
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.26)
                    
                    VStack {
                        Text("En un bosque alegre, vivía Tito, un conejito con orejas largas y suaves.")
                            .font(.custom("futura", fixedSize: 25))
                            .bold()
                        .foregroundStyle(Color.CafeOscuro)
                        .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    }
                    .frame(width: 400, height: 400)
                    .padding(.leading, 50)
                }

            }
            .position(x: startCardsX, y: startCardsY)
            // Con este, le damos a entender que el objeto mezcla entre los valores del position y los del offset
            // 0.5 en position y 0.5 en offset, digamos que se mueve el valor, entonces, por eso lo dejamos en 0
            .offset(x: currentCard1X, y: UIScreen.main.bounds.height * 0)
            //FIN CARTA ------------------------------------------------


            
            //BOTONES PARA "CAMBIAR LA HOJA"
            HStack(spacing: 20){
                
                Button{
                    withAnimation(.spring(duration: 1.4)){
                        if(isCard2 == true){
                            currentCard1X = 0
                            isCard2 = false
                            isCard1 = true
                        } else if(isCard3 == true){
                            currentCard2X = 0
                            isCard2 = true
                            isCard3 = false
                        } else if(isCard4 == true){
                            currentCard3X = 0
                            isCard3 = true
                            isCard4 = false
                        } else if(isCard5 == true){
                            currentCard4X = 0
                            isCard4 = true
                            isCard5 = false
                        } else if(isCard6 == true){
                            currentCard5X = 0
                            isCard5 = true
                            withAnimation(.spring(duration: 0.1)){
                                isCard6 = false
                            }
                        }
                    }
                } label: {
                    Text("Anterior")
                        .font(.custom("Futura", size: 25))
                        .foregroundColor(.white)
                        .padding(.horizontal, 43)
                        .padding(.vertical,16.5)
                }
                .background(Color.Turquesa)
                .cornerRadius(10)
                .padding(.bottom, 50)
                .padding(.leading, 2)
                .opacity(isCard1 ? 0 : 1)
                
                Button{
                    withAnimation(.spring(duration: 1.4)){
                        if(isCard1 == true){
                            currentCard1X = UISW * 2
                            isCard1 = false
                            isCard2 = true
                        } else if(isCard2 == true){
                            currentCard2X = UISW * 2
                            isCard2 = false
                            isCard3 = true
                        } else if(isCard3 == true){
                            currentCard3X = UISW * 2
                            isCard3 = false
                            isCard4 = true
                        }
                        else if(isCard4 == true){
                            currentCard4X = UISW * 2
                            isCard4 = false
                            isCard5 = true
                        }
                        else if(isCard5 == true){
                            currentCard5X = UISW * 2
                            isCard5 = false
                            withAnimation(.spring(duration: 0.1)){
                                isCard6 = true
                            }
                        }
                        
                    }
                } label: {
                    Text("Siguiente")
                        .font(.custom("Futura", size: 25))
                        .foregroundColor(.white)
                        .padding(.horizontal, 35)
                        .padding(.vertical)
                }
                .background(Color.Turquesa)
                .cornerRadius(10)
                .padding(.bottom, 50)
                .padding(.leading, 2)
                .opacity(isCard6 ? 0 : 1)

            }
            .position(x: isCard6 ? UISW * 0.6 : UISW * 0.51, y: UISH * 0.91)
            .offset(x: isCard1 ?  UISW * -0.086 : 0 , y: 0)
     
        }.ignoresSafeArea()
    }
    
}

struct Level1View_Previews: PreviewProvider {
    static var previews: some View {
        let level1 = State(initialValue: false)
        
        return Level1View(level1: level1.projectedValue)
    }
}

