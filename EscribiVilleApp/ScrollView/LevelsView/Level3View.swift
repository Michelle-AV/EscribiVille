import SwiftUI

struct Level3View: View {
    
    @Binding var level3: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    var cardSize: CGFloat = UIScreen.main.bounds.width * 0.20
    
    @State private var isFlipped1 = false
    @State private var isFlipped2 = false
    @State private var isFlipped3 = false
    @State private var isFlipped4 = false
    
    var body: some View {
        ZStack{
            
            Image("base3")
                .resizable()
                .scaledToFill()
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.055)
                .position(x: UIScreen.main.bounds.width * 0.04, y: UIScreen.main.bounds.height * 0.09)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level3=false
                        isFlipped1 = false
                        isFlipped2 = false
                        isFlipped3 = false
                        isFlipped4 = false
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
            
            ZStack{
                ZStack{
                    if isFlipped1 {
                        Image("btnb1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped1 ? 1 : 0)
                        
                        Text("B")
                            .font(.custom("futura", fixedSize: 130))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                            .opacity(isFlipped1 ? 1 : 0)
                    }
                    
                    if !isFlipped1 {
                        Image("btnb1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped1 ? 0 : 1)
                    }
                }.rotation3DEffect(
                    .degrees(isFlipped1 ? 0 : 180),
                    axis: (x: 0, y: 1, z: 0)
                )
                .onTapGesture {
                    if !isFlipped1 {
                        withAnimation {
                            isFlipped1.toggle()
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width * 0.020)
                .position(x: UIScreen.main.bounds.width * 0.175, y: UIScreen.main.bounds.height * 0.21)
                
                ZStack{
                    if isFlipped1 {
                        Text("B")
                            .font(.custom("futura", fixedSize: 95))
                            .frame(width: 98, height: 129)
                            .foregroundStyle(Color.Gris)
                            .cornerRadius(25)
                            .opacity(isFlipped1 ? 1 : 0)
                            .transition(.scale)
                            
                    }
                }.position(x: UIScreen.main.bounds.width * 0.119, y: UIScreen.main.bounds.height * 0.86)
            }
            
            
            ZStack{
                ZStack{
                    if isFlipped2 {
                        Image("btnb2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped2 ? 1 : 0)
                        
                        Text("U")
                            .font(.custom("futura", fixedSize: 130))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                            .opacity(isFlipped2 ? 1 : 0)
                    }
                    
                    if !isFlipped2 {
                        Image("btnb2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped2 ? 0 : 1)
                    }
                }.rotation3DEffect(
                    .degrees(isFlipped2 ? 0 : 180),
                    axis: (x: 0, y: 1, z: 0)
                )
                .onTapGesture {
                    if !isFlipped2 {
                        withAnimation {
                            isFlipped2.toggle()
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width * 0.020)
                .position(x: UIScreen.main.bounds.width * 0.405, y: UIScreen.main.bounds.height * 0.21)
                
                ZStack{
                    if isFlipped2 {
                        Text("U")
                            .font(.custom("futura", fixedSize: 95))
                            .frame(width: 98, height: 129)
                            .foregroundStyle(Color.Gris)
                            .cornerRadius(25)
                            .opacity(isFlipped2 ? 1 : 0)
                            .transition(.scale)
                            
                    }
                }.position(x: UIScreen.main.bounds.width * 0.235, y: UIScreen.main.bounds.height * 0.86)
            }
            
            ZStack{
                ZStack{
                    if isFlipped3 {
                        Image("btnb3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped3 ? 1 : 0)
                        
                        Text("H")
                            .font(.custom("futura", fixedSize: 130))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                            .opacity(isFlipped3 ? 1 : 0)
                    }
                    
                    if !isFlipped3 {
                        Image("btnb3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped3 ? 0 : 1)
                    }
                }.rotation3DEffect(
                    .degrees(isFlipped3 ? 0 : 180),
                    axis: (x: 0, y: 1, z: 0)
                )
                .onTapGesture {
                    if !isFlipped3 {
                        withAnimation {
                            isFlipped3.toggle()
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width * 0.020)
                .position(x: UIScreen.main.bounds.width * 0.175, y: UIScreen.main.bounds.height * 0.55)
                
                ZStack{
                    if isFlipped3 {
                        Text("H")
                            .font(.custom("futura", fixedSize: 95))
                            .frame(width: 98, height: 129)
                            .foregroundStyle(Color.Gris)
                            .cornerRadius(25)
                            .opacity(isFlipped3 ? 1 : 0)
                            .transition(.scale)
                            
                    }
                }.position(x: UIScreen.main.bounds.width * 0.347, y: UIScreen.main.bounds.height * 0.86)
            }
            
            ZStack{
                ZStack{
                    if isFlipped4 {
                        Image("btnb4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped4 ? 1 : 0)
                        
                        Text("O")
                            .font(.custom("futura", fixedSize: 130))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                            .opacity(isFlipped4 ? 1 : 0)
                    }
                    
                    if !isFlipped4 {
                        Image("btnb4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: cardSize)
                            .opacity(isFlipped4 ? 0 : 1)
                    }
                }.rotation3DEffect(
                    .degrees(isFlipped4 ? 0 : 180),
                    axis: (x: 0, y: 1, z: 0)
                )
                .onTapGesture {
                    if !isFlipped4 {
                        withAnimation {
                            isFlipped4.toggle()
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width * 0.020)
                .position(x: UIScreen.main.bounds.width * 0.405, y: UIScreen.main.bounds.height * 0.55)
                
                ZStack{
                    if isFlipped4 {
                        Text("O")
                            .font(.custom("futura", fixedSize: 95))
                            .frame(width: 98, height: 129)
                            .foregroundStyle(Color.Gris)
                            .cornerRadius(25)
                            .opacity(isFlipped4 ? 1 : 0)
                            .transition(.scale)
                            
                    }
                }.position(x: UIScreen.main.bounds.width * 0.463, y: UIScreen.main.bounds.height * 0.86)
            }
            
            
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
        }
        .onChange(of: isFlipped1) { checkCorrect() }
                .onChange(of: isFlipped2) { checkCorrect() }
                .onChange(of: isFlipped3) { checkCorrect() }
                .onChange(of: isFlipped4) { checkCorrect() }
        .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.white)
    }
    
    func checkCorrect(){
        if isFlipped1 && isFlipped2 && isFlipped3 && isFlipped4 {
            isCorrect.toggle()
            SoundManager.instance.playSound()
            withAnimation(.spring(duration: 1)) {
            
            }
        }
    }
}

struct Level3View_Previews: PreviewProvider {
    static var previews: some View {
        let level3 = State(initialValue: false)
        
        return Level3View(level3: level3.projectedValue)
    }
}

