import SwiftUI

struct Level2View: View {
    
    @Binding var level2: Bool
    
    @State var isCorrect: Bool = false
    @State var isMute: Bool = false
    
    @State var numPagina: Int = 1
    @State var pagina: Bool = false
    @State var opacidad1: Double = 1
    @State var opacidad2: Double = 1
    @State var opacidad3: Double = 1
    @State var opacidad4: Double = 1
    @State var opacidad5: Double = 1
    
    //Seccion de variables para las respuestas
    
    @State var startCard1X: CGFloat = UIScreen.main.bounds.width * 0.23
    @State var startCard1Y: CGFloat = UIScreen.main.bounds.height * 0.88
    @State var currentCard1X: CGFloat = 0
    @State var currentCard1Y: CGFloat = 0
    
    @State var startCard2X: CGFloat = UIScreen.main.bounds.width * 0.35
    @State var startCard2Y: CGFloat = UIScreen.main.bounds.height * 0.88
    @State var currentCard2X: CGFloat = 0
    @State var currentCard2Y: CGFloat = 0
    
    @State var startCard3X: CGFloat = UIScreen.main.bounds.width * 0.47
    @State var startCard3Y: CGFloat = UIScreen.main.bounds.height * 0.88
    @State var currentCard3X: CGFloat = 0
    @State var currentCard3Y: CGFloat = 0
   
    @State var startCard4X: CGFloat = UIScreen.main.bounds.width * 0.63
    @State var startCard4Y: CGFloat = UIScreen.main.bounds.height * 0.88
    @State var currentCard4X: CGFloat = 0
    @State var currentCard4Y: CGFloat = 0

    @State var startCard5X: CGFloat = UIScreen.main.bounds.width * 0.78
    @State var startCard5Y: CGFloat = UIScreen.main.bounds.height * 0.88
    @State var currentCard5X: CGFloat = 0
    @State var currentCard5Y: CGFloat = 0
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack{
            
            Image("base2")
                .resizable()
                .scaledToFill()
    
            
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.06)
                .position(x: UIScreen.main.bounds.width * 0.92, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    isMute.toggle()
                }
            
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.Blanco)
                    .frame(width: UISW * 0.47, height: UISH * 0.66)
                
                HStack(spacing: UISW * 0.4){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 15)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 15)
                }.padding(.bottom, UISH * 0.55)
                
                HStack(spacing: UISW * 0.4){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 15)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 15)
                }.padding(.top, UISH * 0.55)
                
                HStack{
                    Text("Había una vez una ")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.Cafe, lineWidth: 4)
                        .frame(width: UISW * 0.08, height: UISH * 0.05)
                    
                    Text(" llamada Juan")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.bottom, UISH * 0.4)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("quien cuidaba su hogar en el bosque y")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.bottom, UISH * 0.3)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("plantaba deliciosas frutas y nueces para él.")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.bottom, UISH * 0.2)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("Un día, ")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.Cafe, lineWidth: 4)
                        .frame(width: UISW * 0.09, height: UISH * 0.05)
                    
                    Text(" notó que tenía muchas")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                }.padding(.bottom, UISH * 0.1)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("frutas y nueces en su jardín y pensó en sus")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("amigos.")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.top, UISH * 0.1)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("Decidió compartir su comida con ellos. LLenó")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.top, UISH * 0.2)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("cestas con ")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.Cafe, lineWidth: 4)
                        .frame(width: UISW * 0.08, height: UISH * 0.05)
                    
                    Text(" y nueces frescas")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                }.padding(.top, UISH * 0.3)
                    .opacity(pagina ? 0 : 1)
                
                HStack{
                    Text("y las llevó a visitar a sus amigos animales.")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.bottom, UISH * 0.4)
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("Los ")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.Cafe, lineWidth: 4)
                        .frame(width: UISW * 0.08, height: UISH * 0.05)
                    
                    Text(" de Juanito, se pusieron muy")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                }.padding(.bottom, UISH * 0.3)
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("contentos y agradecidos por su generosidad.")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.bottom, UISH * 0.2)
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("Se sintió muy feliz de ayudar a sus amigos y")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.bottom, UISH * 0.1)
                    .opacity(pagina ? 1 : 0)

                HStack{
                    Text("de cuidar el bosque, ")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.Cafe, lineWidth: 4)
                        .frame(width: UISW * 0.14, height: UISH * 0.05)
                    
                    Text(" la comida")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                    
                }
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("que había cultivado con amor. Desde entonces,")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.top, UISH * 0.1)
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("todos los amigos de Juanito vivieron felices")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.top, UISH * 0.2)
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("en el bosque, sabiendo que pueden")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.top, UISH * 0.3)
                    .opacity(pagina ? 1 : 0)
                
                HStack{
                    Text("contar el uno en el otro. FIN")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
                }.padding(.top, UISH * 0.4)
                    .opacity(pagina ? 1 : 0)
                
                HStack(spacing: 20){
                    
                    Image(systemName: "arrowshape.backward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(Color.Cafe)
                        .opacity(pagina ? 1 : 0)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                pagina = false
                                numPagina = 1
                                checkOpacity1()
                                checkOpacity2()
                                checkOpacity3()
                                checkOpacity4()
                                checkOpacity5()
                            }
                        }
                    
                    Text("Página: \(numPagina)/2")
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Cafe)
          
                    Image(systemName: "arrowshape.forward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(Color.Cafe)
                        .opacity(pagina ? 0 : 1)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                pagina = true
                                numPagina = 2
                                checkOpacity1()
                                checkOpacity2()
                                checkOpacity3()
                                checkOpacity4()
                                checkOpacity5()
                            }
                        }
                    
                }.padding(.top, UISH * 0.55)
                
            }.position(x: UISW * 0.31, y: UISH * 0.4)
            
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.Blanco)
                    .frame(width: UISW * 0.845, height: UISH * 0.14)
                
                HStack(spacing: UISW * 0.78){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                }.padding(.bottom, UISH * 0.08)
                
                HStack(spacing: UISW * 0.78){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 10)
                }.padding(.top, UISH * 0.08)
                                
            }.position(x: UISW * 0.5, y: UISH * 0.88)
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color.Cafe)
                    .frame(width: UISW * 0.08, height: UISH * 0.05)
                
                Text("ardilla")
                    .font(.custom("futura", fixedSize: 20))
                    .bold()
                    .foregroundStyle(Color.Blanco)
            }.opacity(opacidad1)
                .position(x: startCard1X, y: startCard1Y)
                .offset(x: currentCard1X, y: currentCard1Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard1X = value.translation.width
                            currentCard1Y = value.translation.height
                        }
                        .onEnded{ value in
                            if(currentCard1X > 35 && currentCard1X < 210 && currentCard1Y < -530 && currentCard1Y > -600){
                                withAnimation(.spring(duration: 0.4)){
                                    currentCard1X = 123
                                    currentCard1Y = -558
                                    if(pagina == true){
                                        currentCard1X = 0
                                        currentCard1Y = 0
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.4)) {
                                    currentCard1X = 0
                                    currentCard1Y = 0
                                }
                            }
                            checkCorrect()
                        }
                )
            
            ZStack{
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color.Cafe)
                    .frame(width: UISW * 0.08, height: UISH * 0.05)
                
                Text("amigos")
                    .font(.custom("futura", fixedSize: 20))
                    .bold()
                    .foregroundStyle(Color.Blanco)
                
            }.opacity(opacidad2)
                .position(x: startCard2X, y: startCard2Y)
                .offset(x: currentCard2X, y: currentCard2Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard2X = value.translation.width
                            currentCard2Y = value.translation.height
                        }
                        .onEnded{ value in
                            if(currentCard2X > -270 && currentCard2X < -90 && currentCard2Y < -490 && currentCard2Y > -560){
                                withAnimation(.spring(duration: 0.4)){
                                    currentCard2X = 0
                                    currentCard2Y = 0
                                    if(pagina == true){
                                        currentCard2X = -181
                                        currentCard2Y = -517
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.4)) {
                                    currentCard2X = 0
                                    currentCard2Y = 0
                                }
                            }
                            checkCorrect()
                        }
                )
            
            ZStack{
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color.Cafe)
                    .frame(width: UISW * 0.09, height: UISH * 0.05)
                
                Text("Juanito")
                    .font(.custom("futura", fixedSize: 20))
                    .bold()
                    .foregroundStyle(Color.Blanco)
                
            }.opacity(opacidad3)
                .position(x: startCard3X, y: startCard3Y)
                .offset(x: currentCard3X, y: currentCard3Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard3X = value.translation.width
                            currentCard3Y = value.translation.height
                        }
                        .onEnded{ value in
                            if(currentCard3X > -370 && currentCard3X < -180 && currentCard3Y < -410 && currentCard3Y > -475){
                                withAnimation(.spring(duration: 0.4)){
                                    currentCard3X = -273
                                    currentCard3Y = -435
                                    if(pagina == true){
                                        currentCard3X = 0
                                        currentCard3Y = 0
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.4)) {
                                    currentCard3X = 0
                                    currentCard3Y = 0
                                }
                            }
                            checkCorrect()
                        }
                )
            
            ZStack{
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color.Cafe)
                    .frame(width: UISW * 0.14, height: UISH * 0.05)
                
                Text("compartiendo")
                    .font(.custom("futura", fixedSize: 20))
                    .bold()
                    .foregroundStyle(Color.Blanco)
            }.opacity(opacidad4)
                .position(x: startCard4X, y: startCard4Y)
                .offset(x: currentCard4X, y: currentCard4Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard4X = value.translation.width
                            currentCard4Y = value.translation.height
                        }
                        .onEnded{ value in
                            if(currentCard4X > -480 && currentCard4X < -160 && currentCard4Y < -360 && currentCard4Y > -440){
                                withAnimation(.spring(duration: 0.4)){
                                    currentCard4X = 0
                                    currentCard4Y = 0
                                    if(pagina == true){
                                        currentCard4X = -321
                                        currentCard4Y = -392
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.4)) {
                                    currentCard4X = 0
                                    currentCard4Y = 0
                                }
                            }
                            checkCorrect()
                        }
                )
            
            ZStack{
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color.Cafe)
                    .frame(width: UISW * 0.08, height: UISH * 0.05)
                
                Text("frutas")
                    .font(.custom("futura", fixedSize: 20))
                    .bold()
                    .foregroundStyle(Color.Blanco)
            }.opacity(opacidad5)
                .position(x: startCard5X, y: startCard5Y)
                .offset(x: currentCard5X, y: currentCard5Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard5X = value.translation.width
                            currentCard5Y = value.translation.height
                        }
                        .onEnded{ value in
                            if(currentCard5X > -685 && currentCard5X < -505 && currentCard5Y < -240 && currentCard5Y > -310){
                                withAnimation(.spring(duration: 0.4)){
                                    currentCard5X = -587
                                    currentCard5Y = -271
                                    if(pagina == true){
                                        currentCard5X = 0
                                        currentCard5Y = 0
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.4)) {
                                    currentCard5X = 0
                                    currentCard5Y = 0
                                }
                            }
                            checkCorrect()
                        }
                )
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.06)
                .position(x: UIScreen.main.bounds.width * 0.08, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level2.toggle()
                        currentCard1X = 0
                        currentCard1Y = 0
                        currentCard2X = 0
                        currentCard2Y = 0
                        currentCard3X = 0
                        currentCard3Y = 0
                        currentCard4X = 0
                        currentCard4Y = 0
                        currentCard5X = 0
                        currentCard5Y = 0
                    }
                }
            
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
        }.ignoresSafeArea()
            .background(Color.Lima)
    }
    
    func checkOpacity1(){
        if(self.pagina == true && currentCard1X == 123 && currentCard1Y == -558){
            opacidad1 = 0
        } else if(self.pagina == false){
            opacidad1 = 1
        }
    }
    
    func checkOpacity2(){
        if(self.pagina == false && currentCard2X == -181 && currentCard2Y == -517){
            opacidad2 = 0
        } else if(self.pagina == true){
            opacidad2 = 1
        }
    }
    
    func checkOpacity3(){
        if(self.pagina == true && currentCard3X == -273 && currentCard3Y == -435){
            opacidad3 = 0
        } else if(self.pagina == false){
            opacidad3 = 1
        }
    }
    
    func checkOpacity4(){
        if(self.pagina == false && currentCard4X == -321 && currentCard4Y == -392){
            opacidad4 = 0
        } else if(self.pagina == true){
            opacidad4 = 1
        }
    }
    
    func checkOpacity5(){
        if(self.pagina == true && currentCard5X == -587 && currentCard5Y == -271){
            opacidad5 = 0
        } else if(self.pagina == false){
            opacidad5 = 1
        }
    }
    
    func checkCorrect(){
        if(currentCard1X == 123 && currentCard1Y == -558 && currentCard2X == -181 && currentCard2Y == -517 && currentCard3X == -273 && currentCard3Y == -435 && currentCard5X == -587 && currentCard5Y == -271 && currentCard4X == -321 && currentCard4Y == -392){
            isCorrect.toggle()
            SoundManager.instance.playSound()
            withAnimation(.spring(duration: 1)) {
                
            }
        }
    }
}

struct Level2View_Previews: PreviewProvider {
    static var previews: some View {
        let level2 = State(initialValue: false)
        
        return Level2View(level2: level2.projectedValue)
    }
}
