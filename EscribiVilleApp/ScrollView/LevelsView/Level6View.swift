import SwiftUI

struct Level6View: View {
    
    @Binding var level6: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    var cardSize: CGFloat = UIScreen.main.bounds.width * 0.10
    var cardSize2: CGFloat = UIScreen.main.bounds.width * 0.8

    @State var startCard1X: CGFloat = UIScreen.main.bounds.width * 0.81
    @State var startCard1Y: CGFloat = UIScreen.main.bounds.height * 0.37
    @State var currentCard1X: CGFloat = 0
    @State var currentCard1Y: CGFloat = 0
    
    @State var startCard2X: CGFloat = UIScreen.main.bounds.width * 0.81
    @State var startCard2Y: CGFloat = UIScreen.main.bounds.height * 0.53
    @State var currentCard2X: CGFloat = 0
    @State var currentCard2Y: CGFloat = 0

    @State var startCard3X: CGFloat = UIScreen.main.bounds.width * 0.81
    @State var startCard3Y: CGFloat = UIScreen.main.bounds.height * 0.69
    @State var currentCard3X: CGFloat = 0
    @State var currentCard3Y: CGFloat = 0
    
    @State var startCard1X2: CGFloat = UIScreen.main.bounds.width * 0.91
    @State var startCard1Y2: CGFloat = UIScreen.main.bounds.height * 0.15
    @State var currentCard1X2: CGFloat = 0
    @State var currentCard1Y2: CGFloat = 0
    
    @State var startCard2X2: CGFloat = UIScreen.main.bounds.width * 0.91
    @State var startCard2Y2: CGFloat = UIScreen.main.bounds.height * 0.31
    @State var currentCard2X2: CGFloat = 0
    @State var currentCard2Y2: CGFloat = 0

    @State var startCard3X2: CGFloat = UIScreen.main.bounds.width * 0.91
    @State var startCard3Y2: CGFloat = UIScreen.main.bounds.height * 0.46
    @State var currentCard3X2: CGFloat = 0
    @State var currentCard3Y2: CGFloat = 0
    
    @State var startCard1X3: CGFloat = UIScreen.main.bounds.width * 0.088
    @State var startCard1Y3: CGFloat = UIScreen.main.bounds.height * 0.385
    @State var currentCard1X3: CGFloat = 0
    @State var currentCard1Y3: CGFloat = 0
    
    @State var startCard2X3: CGFloat = UIScreen.main.bounds.width * 0.088
    @State var startCard2Y3: CGFloat = UIScreen.main.bounds.height * 0.555
    @State var currentCard2X3: CGFloat = 0
    @State var currentCard2Y3: CGFloat = 0

    @State var startCard3X3: CGFloat = UIScreen.main.bounds.width * 0.213
    @State var startCard3Y3: CGFloat = UIScreen.main.bounds.height * 0.34
    @State var currentCard3X3: CGFloat = 0
    @State var currentCard3Y3: CGFloat = 0
    
    @State var startCard4X3: CGFloat = UIScreen.main.bounds.width * 0.213
    @State var startCard4Y3: CGFloat = UIScreen.main.bounds.height * 0.51
    @State var currentCard4X3: CGFloat = 0
    @State var currentCard4Y3: CGFloat = 0
    
    @State var nivel1: Bool = true
    @State var nivel2: Bool = false
    @State var nivel3: Bool = false
    
    var body: some View {
        ZStack{
            
            if nivel1 {
                ZStack{
                    
                    Image("base6-1")
                        .resizable()
                        .scaledToFill()
                    
                    HStack (spacing: 45){
                        ZStack{
                            Image("btny")
                                .resizable()
                                .scaledToFit()
                                .frame(width: cardSize)
                            
                            Text("B")
                                .font(.custom("futura", fixedSize: 70))
                                .bold()
                                .foregroundStyle(.white)
                                .padding(.bottom, 10)
                        }
                        
                        ZStack{
                            Image("btnw")
                                .resizable()
                                .scaledToFit()
                                .frame(width: cardSize)
                        }
                        
                        ZStack{
                            Image("btny")
                                .resizable()
                                .scaledToFit()
                                .frame(width: cardSize)
                            
                            Text("H")
                                .font(.custom("futura", fixedSize: 70))
                                .bold()
                                .foregroundStyle(.white)
                                .padding(.bottom, 10)
                        }
                        
                        ZStack{
                            Image("btny")
                                .resizable()
                                .scaledToFit()
                                .frame(width: cardSize)
                            
                            Text("O")
                                .font(.custom("futura", fixedSize: 70))
                                .bold()
                                .foregroundStyle(.white)
                                .padding(.bottom, 10)
                        }
                        
                    }.position(x: UIScreen.main.bounds.width * 0.34, y: UIScreen.main.bounds.height * 0.49)
                    
                    ZStack{
                        Image("btnb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("U")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                        
                    }.position(x: startCard1X, y: startCard1Y)
                        .offset(x: currentCard1X, y: currentCard1Y)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentCard1X = value.translation.width
                                    currentCard1Y = value.translation.height
                                }
                                .onEnded{ value in
                                    if(currentCard1X > -725 && currentCard1X < -566 && currentCard1Y > 23 && currentCard1Y < 190){
                                        withAnimation(.spring(duration: 0.5)) {
                                            currentCard1X = -636
                                            currentCard1Y = 99
                                            checkCorrect1()
                                        }
                                    } else {
                                        withAnimation(.spring()) {
                                            currentCard1X = 0
                                            currentCard1Y = 0
                                        }
                                    }
                                }
                        )
                    
                    ZStack{
                        Image("btnb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("A")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                        
                    }.position(x: startCard2X, y: startCard2Y)
                        .offset(x: currentCard2X, y: currentCard2Y)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentCard2X = value.translation.width
                                    currentCard2Y = value.translation.height
                                }
                                .onEnded{ value in
                                    if(currentCard2X > -800 && currentCard2X < -525 && currentCard2Y > 150 && currentCard2Y < 400){
                                        withAnimation(.spring(duration: 0.5)) {
                                            //checkCorrect()
                                        }
                                    } else {
                                        withAnimation(.spring()) {
                                            currentCard2X = 0
                                            currentCard2Y = 0
                                        }
                                    }
                                }
                        )
                    
                    
                    ZStack{
                        Image("btnb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("I")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                        
                    }.position(x: startCard3X, y: startCard3Y)
                        .offset(x: currentCard3X, y: currentCard3Y)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentCard3X = value.translation.width
                                    currentCard3Y = value.translation.height
                                }
                                .onEnded{ value in
                                    if(currentCard3X > -600 && currentCard3X < -525 && currentCard3Y > 150 && currentCard3Y < 400){
                                        withAnimation(.spring(duration: 0.5)) {
                                            //checkCorrect1()
                                        }
                                    } else {
                                        withAnimation(.spring()) {
                                            currentCard3X = 0
                                            currentCard3Y = 0
                                        }
                                    }
                                }
                        )
                }
                
                
            } else
            if nivel2{
                Image("base6-2")
                    .resizable()
                    .scaledToFill()
                
                Image(isMute ? "btnMute" : "btnVolumen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.055)
                    .position(x: UIScreen.main.bounds.width * 0.12, y: UIScreen.main.bounds.height * 0.09)
                    .onTapGesture {
                        isMute.toggle()
                    }
                
                HStack (spacing: 16){
                    ZStack{
                        Image("btny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("P")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                    }
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                    
                    ZStack{
                        Image("btny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("J")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                    }
                    
                    ZStack{
                        Image("btny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("A")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                    }
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                    
                }.position(x: UIScreen.main.bounds.width * 0.37, y: UIScreen.main.bounds.height * 0.49)
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("R")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard1X2, y: startCard1Y2)
                    .offset(x: currentCard1X2, y: currentCard1Y2)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard1X2 = value.translation.width
                                currentCard1Y2 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard1X2 > -525 && currentCard1X2 < -360 && currentCard1Y2 > 197 && currentCard1Y2 < 343){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard1X2 = -436
                                        currentCard1Y2 = 278.5
                                        checkCorrect2()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard1X2 = 0
                                        currentCard1Y2 = 0
                                    }
                                }
                            }
                    )
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("A")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard2X2, y: startCard2Y2)
                    .offset(x: currentCard2X2, y: currentCard2Y2)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard2X2 = value.translation.width
                                currentCard2Y2 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard2X2 > -925 && currentCard2X2 < -760 && currentCard2Y2 > 65 && currentCard2Y2 < 228){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard2X2 = -838
                                        currentCard2Y2 = 147.5
                                        checkCorrect2()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard2X2 = 0
                                        currentCard2Y2 = 0
                                    }
                                }
                            }
                    )
                
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("O")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard3X2, y: startCard3Y2)
                    .offset(x: currentCard3X2, y: currentCard3Y2)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard3X2 = value.translation.width
                                currentCard3Y2 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard3X2 > -377 && currentCard3X2 < -225 && currentCard3Y2 > -55 && currentCard3Y2 < 100){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard3X2 = -302
                                        currentCard3Y2 = 24.5
                                        checkCorrect2()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard3X2 = 0
                                        currentCard3Y2 = 0
                                    }
                                }
                            }
                    )
                
            } else if nivel3 {
                Image("base6-3")
                    .resizable()
                    .scaledToFill()
                
                HStack (spacing: 16){
                    ZStack{
                        Image("btny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("C")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                    }
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                    
                    ZStack{
                        Image("btny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                        
                        Text("N")
                            .font(.custom("futura", fixedSize: 70))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                    }
                    
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                    
                    ZStack{
                        Image("btnw")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                    }
                }.position(x: UIScreen.main.bounds.width * 0.64, y: UIScreen.main.bounds.height * 0.66)
                
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("J")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard1X3, y: startCard1Y3)
                    .offset(x: currentCard1X3, y: currentCard1Y3)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard1X3 = value.translation.width
                                currentCard1Y3 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard1X3 > 772 && currentCard1X3 < 926 && currentCard1Y3 > 154.5 && currentCard1Y3 < 302.5){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard1X3 = 852.5
                                        currentCard1Y3 = 225.5
                                        checkCorrect3()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard1X3 = 0
                                        currentCard1Y3 = 0
                                    }
                                }
                            }
                    )
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("O")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard2X3, y: startCard2Y3)
                    .offset(x: currentCard2X3, y: currentCard2Y3)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard2X3 = value.translation.width
                                currentCard2Y3 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard2X3 > 366 && currentCard2X3 < 530 && currentCard2Y3 > 9 && currentCard2Y3 < 170){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard2X3 = 450.5
                                        currentCard2Y3 = 86
                                        checkCorrect3()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard2X3 = 0
                                        currentCard2Y3 = 0
                                    }
                                }
                            }
                    )
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("O")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard3X3, y: startCard3Y3)
                    .offset(x: currentCard3X3, y: currentCard3Y3)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard3X3 = value.translation.width
                                currentCard3Y3 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard3X3 > 773 && currentCard3X3 < 872 && currentCard3Y3 > 185.5 && currentCard3Y3 < 342.5){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard3X3 = 839
                                        currentCard3Y3 = 262.5
                                        checkCorrect3()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard3X3 = 0
                                        currentCard3Y3 = 0
                                    }
                                }
                            }
                    )
                
                ZStack{
                    Image("btnb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: cardSize)
                    
                    Text("E")
                        .font(.custom("futura", fixedSize: 70))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 10)
                    
                }.position(x: startCard4X3, y: startCard4Y3)
                    .offset(x: currentCard4X3, y: currentCard4Y3)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                currentCard4X3 = value.translation.width
                                currentCard4Y3 = value.translation.height
                            }
                            .onEnded{ value in
                                if(currentCard4X3 > 500 && currentCard4X3 < 640 && currentCard4Y3 > 47 && currentCard4Y3 < 200){
                                    withAnimation(.spring(duration: 0.5)) {
                                        currentCard4X3 = 571
                                        currentCard4Y3 = 123
                                        checkCorrect3()
                                    }
                                } else {
                                    withAnimation(.spring()) {
                                        currentCard4X3 = 0
                                        currentCard4Y3 = 0
                                    }
                                }
                            }
                    )
                
                
                
            }
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.055)
                .position(x: UIScreen.main.bounds.width * 0.06, y: UIScreen.main.bounds.height * 0.09)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level6 = false
                        nivel1 = true
                        nivel2 = false
                        nivel3 = false
                    }
                }
            
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.055)
                .position(x: UIScreen.main.bounds.width * 0.94, y: UIScreen.main.bounds.height * 0.09)
                .onTapGesture {
                    isMute.toggle()
                }
            
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
        }
        .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.white)
    
    }
    
    func checkCorrect1(){
        if currentCard1X == -636 && currentCard1Y == 99 {
            completarSubactividad1()
        }
    }
    
    func checkCorrect2(){
        if currentCard1X2 == -436 && currentCard1Y2 == 278.5 && currentCard2X2 == -838 && currentCard2Y2 == 147.5  && currentCard3X2 == -302 && currentCard3Y2 == 24.5 {
            completarSubactividad2()
        }
    }
    
    func checkCorrect3(){
        if currentCard1X3 == 852.5 && currentCard1Y3 == 225.5 && currentCard2X3 == 450.5 && currentCard2Y3 == 86  && currentCard3X3 == 839 && currentCard3Y3 == 262.5 && currentCard4X3 == 571 && currentCard4Y3 == 123 {
            isCorrect.toggle()
            SoundManager.instance.playSound()
            withAnimation(.spring(duration: 1)) {
                resetSublevelStates()
            }
        }
    }
    
    func resetSublevelStates() {
        currentCard1X = 0
        currentCard1Y = 0
        currentCard2X = 0
        currentCard2Y = 0
        currentCard3X = 0
        currentCard3Y = 0
        
        currentCard1X2 = 0
        currentCard1Y2 = 0
        currentCard2X2 = 0
        currentCard2Y2 = 0
        currentCard3X2 = 0
        currentCard3Y2 = 0
        
        currentCard1X3 = 0
        currentCard1Y3 = 0
        currentCard2X3 = 0
        currentCard2Y3 = 0
        currentCard3X3 = 0
        currentCard3Y3 = 0
        currentCard4X3 = 0
        currentCard4Y3 = 0
    }
    
    func completarSubactividad1() {
        nivel1 = false
        nivel2 = true
        nivel3 = false
        resetSublevelStates()
    }
    
    func completarSubactividad2() {
        nivel1 = false
        nivel2 = false
        nivel3 = true
        resetSublevelStates()
    }

}

struct Level6View_Previews: PreviewProvider {
    static var previews: some View {
        let level6 = State(initialValue: false)
        
        return Level6View(level6: level6.projectedValue)
    }
}
