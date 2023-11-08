import SwiftUI

struct Level4View: View {
    
    @Binding var level4: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    @State var card1R: Double = 5
    @State var card2R: Double = -6
    @State var card3R: Double = 12
    @State var card5R: Double = -15
    @State var card4R: Double = -4
    
    var cardSize: CGFloat = UIScreen.main.bounds.width * 0.13
    
    @State var startCard1X: CGFloat = UIScreen.main.bounds.width * 0.7
    @State var startCard1Y: CGFloat = UIScreen.main.bounds.height * 0.23
    @State var currentCard1X: CGFloat = 0
    @State var currentCard1Y: CGFloat = 0
    
    @State var startCard2X: CGFloat = UIScreen.main.bounds.width * 0.85
    @State var startCard2Y: CGFloat = UIScreen.main.bounds.height * 0.26
    @State var currentCard2X: CGFloat = 0
    @State var currentCard2Y: CGFloat = 0

    @State var startCard3X: CGFloat = UIScreen.main.bounds.width * 0.63
    @State var startCard3Y: CGFloat = UIScreen.main.bounds.height * 0.48
    @State var currentCard3X: CGFloat = 0
    @State var currentCard3Y: CGFloat = 0
    
    @State var startCard5X: CGFloat = UIScreen.main.bounds.width * 0.89
    @State var startCard5Y: CGFloat = UIScreen.main.bounds.height * 0.47
    @State var currentCard5X: CGFloat = 0
    @State var currentCard5Y: CGFloat = 0
    
    @State var startCard4X: CGFloat = UIScreen.main.bounds.width * 0.76
    @State var startCard4Y: CGFloat = UIScreen.main.bounds.height * 0.5
    @State var currentCard4X: CGFloat = 0
    @State var currentCard4Y: CGFloat = 0
    
    var body: some View {
        ZStack{
            
            Image("base4")
                .resizable()
                .scaledToFill()
            
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.055)
                .position(x: UIScreen.main.bounds.width * 0.06, y: UIScreen.main.bounds.height * 0.09)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level4.toggle()
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
                        card1R = 5
                        card2R = -6
                        card3R = 12
                        card5R = -15
                        card4R = -4
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
            
            HStack(spacing: 25){
                
                Image("btn4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Image("btn3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Image("btn1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Image("btn5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Image("btn2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
            }.frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
                .background(Color.white)
                .cornerRadius(30)
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.82)
            
            
            ZStack{
                Image("btn1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("R")
                    .font(.custom("futura", fixedSize: 70))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.bottom, 10)
                
            }.rotationEffect(.degrees(card1R))
                .position(x: startCard1X, y: startCard1Y)
                .offset(x: currentCard1X, y: currentCard1Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard1X = value.translation.width
                            currentCard1Y = value.translation.height
                            withAnimation(.spring(duration: 0.4)) {
                                card1R = 0
                            }
                        }
                        .onEnded{ value in
                            if(currentCard1X > -365 && currentCard1X < -100 && currentCard1Y > 350 && currentCard1Y < 620){
                                withAnimation(.spring(duration: 0.5)) {
                                    currentCard1X = -235
                                    currentCard1Y = 485
                                    card1R = 0
                                    checkCorrect()
                                }
                            } else {
                                withAnimation(.spring()) {
                                    currentCard1X = 0
                                    currentCard1Y = 0
                                    card1R = 5
                                }
                            }
                        }
                )
            
            ZStack{
                
                Image("btn2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("O")
                    .font(.custom("futura", fixedSize: 70))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.bottom, 10)
                
            }.rotationEffect(.degrees(card2R))
                .position(x: startCard2X, y: startCard2Y)
                .offset(x: currentCard2X, y: currentCard2Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard2X = value.translation.width
                            currentCard2Y = value.translation.height
                            withAnimation(.spring(duration: 0.4)) {
                                card2R = 0
                            }
                        }
                        .onEnded{ value in
                            if(currentCard2X > -190 && currentCard2X < 80 && currentCard2Y > 310 && currentCard2Y < 600){
                                withAnimation(.spring(duration: 0.5)) {
                                    currentCard2X = -55
                                    currentCard2Y = 462
                                    card2R = 0
                                    checkCorrect()
                                }
                            } else {
                                withAnimation(.spring()) {
                                    currentCard2X = 0
                                    currentCard2Y = 0
                                    card2R = -6
                                }
                            }
                        }
                )
            
            ZStack{
                
                Image("btn3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("O")
                    .font(.custom("futura", fixedSize: 70))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.bottom, 10)
                
            }.rotationEffect(.degrees(card3R))
                .position(x: startCard3X, y: startCard3Y)
                .offset(x: currentCard3X, y: currentCard3Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard3X = value.translation.width
                            currentCard3Y = value.translation.height
                            withAnimation(.spring(duration: 0.4)) {
                                card3R = 0
                            }
                        }
                        .onEnded{ value in
                            if(currentCard3X > -460 && currentCard3X < -195 && currentCard3Y > 130 && currentCard3Y < 410){
                                withAnimation(.spring(duration: 0.5)) {
                                    currentCard3X = -330
                                    currentCard3Y = 280
                                    card3R = 0
                                    checkCorrect()
                                }
                            } else {
                                withAnimation(.spring()) {
                                    currentCard3X = 0
                                    currentCard3Y = 0
                                    card3R = 12
                                }
                            }
                        }
                )
            
            ZStack {
                
                Image("btn5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("R")
                    .font(.custom("futura", fixedSize: 70))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.bottom, 10)
                
            }.rotationEffect(.degrees(card5R))
                .position(x: startCard5X, y: startCard5Y)
                .offset(x: currentCard5X, y: currentCard5Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard5X = value.translation.width
                            currentCard5Y = value.translation.height
                            withAnimation(.spring(duration: 0.4)) {
                                card5R = 0
                            }
                        }
                        .onEnded{ value in
                            if(currentCard5X > -415 && currentCard5X < -145 && currentCard5Y > 144 && currentCard5Y < 425){
                                withAnimation(.spring(duration: 0.5)) {
                                    currentCard5X = -281
                                    currentCard5Y = 290
                                    card5R = 0
                                    checkCorrect()
                                }
                            } else {
                                withAnimation(.spring()) {
                                    currentCard5X = 0
                                    currentCard5Y = 0
                                    card5R = -15
                                }
                            }
                        }
                )
            
            
            ZStack{
                Image("btn4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: cardSize)
                
                Text("Z")
                    .font(.custom("futura", fixedSize: 70))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.bottom, 10)
                
            }.rotationEffect(.degrees(card4R))
                .position(x: startCard4X, y: startCard4Y)
                .offset(x: currentCard4X, y: currentCard4Y)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentCard4X = value.translation.width
                            currentCard4Y = value.translation.height
                            withAnimation(.spring(duration: 0.4)) {
                                card4R = 0
                            }
                        }
                        .onEnded{ value in
                            if(currentCard4X > -800 && currentCard4X < -525 && currentCard4Y > 120 && currentCard4Y < 400){
                                withAnimation(.spring(duration: 0.5)) {
                                    currentCard4X = -663
                                    currentCard4Y = 260
                                    card4R = 0
                                    checkCorrect()
                                }
                            } else {
                                withAnimation(.spring()) {
                                    currentCard4X = 0
                                    currentCard4Y = 0
                                    card4R = -4
                                }
                            }
                        }
                )
        
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
        }.ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.white)
    }
    
    func checkCorrect(){
        if(currentCard1X == -235 && currentCard1Y == 485 && currentCard2X == -55 && currentCard2Y == 462 && currentCard3X == -330 && currentCard3Y == 280 && currentCard5X == -281 && currentCard5Y == 290 && currentCard4X == -663 && currentCard4Y == 260){
            isCorrect.toggle()
            SoundManager.instance.playSound()
            withAnimation(.spring(duration: 1)) {
//                currentCard1X = 0
//                currentCard1Y = 0
//                currentCard2X = 0
//                currentCard2Y = 0
//                currentCard3X = 0
//                currentCard3Y = 0
//                currentCard4X = 0
//                currentCard4Y = 0
//                currentCard5X = 0
//                currentCard5Y = 0
//                card1R = 5
//                card2R = -6
//                card3R = 12
//                card5R = -15
//                card4R = -4
            }
        }
    }
}

struct Level4View_Previews: PreviewProvider {
    static var previews: some View {
        let level4 = State(initialValue: false)
        
        return Level4View(level4: level4.projectedValue)
    }
}
