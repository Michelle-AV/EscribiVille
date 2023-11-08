import SwiftUI

struct Level12View: View {
    
    @Binding var level12: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    @State var UISW: CGFloat = UIScreen.main.bounds.width
    @State var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State private var path = Path()
    @State private var isDrawing = false
    
    //Sección para las letras
    @State var inputE: String = ""
    @State var displayE: String = ""
    
    @State var inputR: String = ""
    @State var displayR: String = ""
    
    @State var inputE2: String = ""
    @State var displayE2: String = ""
    
    @State var inputA: String = ""
    @State var displayA: String = ""
    
    @State var inputO: String = ""
    @State var displayO: String = ""
    
    @State var inputA2: String = ""
    @State var displayA2: String = ""
    
    @State var inputE3: String = ""
    @State var displayE3: String = ""
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(Color.black)
                .frame(width: UISW, height: UISH)
                .opacity(0.6)
            
            Image("base12")
                .resizable()
                .scaledToFill()
                .frame(width: UISW * 0.8)
        
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.045)
                .position(x: UIScreen.main.bounds.width * 0.04, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level12.toggle()
                        displayA = ""
                        displayE = ""
                        displayO = ""
                        displayR = ""
                        displayA2 = ""
                        displayE2 = ""
                        displayE3 = ""
                    }
                }
            
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.045)
                .position(x: UIScreen.main.bounds.width * 0.96, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    isMute.toggle()
                }
            
            //Palabra Marea -------------------------------------
            
            Text("M")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .padding(.bottom, 10)
                .position(x: UISW * 0.6825, y: UISH * 0.33)
            
            Text("R")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .padding(.bottom, 10)
                .position(x: UISW * 0.6825, y: UISH * 0.56)
            
            TextField("", text: $inputE3)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.683, y: UISH * 0.67)
                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayE3 = ""
                    inputE3 = ""
                }
                .onChange(of: inputE3) { newValue in
                    if newValue.lowercased() == "e" {
                        displayE3 = "E"
                        checkCorrect()
                    } else {
                        displayE3 = ""
                    }
                }
            
            Text("\(displayE3)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.683, y: UISH * 0.67)

            Text("A")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .padding(.bottom, 10)
                .position(x: UISW * 0.684, y: UISH * 0.787)
            
            //Palabra Pez -------------------------------------
            
            Text("P")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.118, y: UISH * 0.325)
            
            TextField("", text: $inputE)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.116, y: UISH * 0.443)
                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayE = ""
                    inputE = ""
                }
                .onChange(of: inputE) { newValue in
                    if newValue.lowercased() == "e" {
                        displayE = "E"
                        checkCorrect()
                    } else {
                        displayE = ""
                    }
                }
            
            Text("\(displayE)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.116, y: UISH * 0.44)
            
            Text("Z")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.118, y: UISH * 0.554)
            
            //Palabra Volcan -------------------------------------

            Text("V")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.52, y: UISH * 0.205)
            
            TextField("", text: $inputO)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.5185, y: UISH * 0.326)
                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayO = ""
                    inputO = ""
                }
                .onChange(of: inputO) { newValue in
                    if newValue.lowercased() == "o" {
                        displayO = "O"
                        checkCorrect()
                    } else {
                        displayO = ""
                    }
                }
            
            Text("\(displayO)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.52, y: UISH * 0.326)

            Text("L")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.523, y: UISH * 0.44)
            
            Text("C")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.52, y: UISH * 0.556)
            
            TextField("", text: $inputA2)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.521, y: UISH * 0.677)                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayA2 = ""
                    inputA2 = ""
                }
                .onChange(of: inputA2) { newValue in
                    if newValue.lowercased() == "a" {
                        displayA2 = "Á"
                        checkCorrect()
                    } else {
                        displayA2 = ""
                    }
                }
            
            Text("\(displayA2)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.522, y: UISH * 0.677)
            Text("N")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.522, y: UISH * 0.788)
            
            //Palabra Estrella -------------------------------------

            Text("S")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.199, y: UISH * 0.44)
            
            Text("T")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.28, y: UISH * 0.44)
            
            TextField("", text: $inputR)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.359, y: UISH * 0.443)
                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayR = ""
                    inputR = ""
                }
                .onChange(of: inputR) { newValue in
                    if newValue.lowercased() == "r" {
                        displayR = "R"
                        checkCorrect()
                    } else {
                        displayR = ""
                    }
                }
            
            Text("\(displayR)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.359, y: UISH * 0.44)
            
            TextField("", text: $inputE2)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.44, y: UISH * 0.443)
                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayE2 = ""
                    inputE2 = ""
                }
                .onChange(of: inputE2) { newValue in
                    if newValue.lowercased() == "e" {
                        displayE2 = "E"
                        checkCorrect()
                    } else {
                        displayE2 = ""
                    }
                }
            
            Text("\(displayE2)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.44, y: UISH * 0.443)

            Text("L")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.604, y: UISH * 0.44)
            
            TextField("", text: $inputA)
                .frame(width: 50, height: 90)
                .position(x: UISW * 0.6826, y: UISH * 0.443)
                .foregroundColor(Color.ArenaOscura)
                .padding(.horizontal)
                .onTapGesture {
                    displayA = ""
                    inputA = ""
                }
                .onChange(of: inputA) { newValue in
                    if newValue.lowercased() == "a" {
                        displayA = "A"
                        checkCorrect()
                    } else {
                        displayA = ""
                    }
                }
            
            Text("\(displayA)")
                .font(.custom("futura", fixedSize: 50))
                .bold()
                .foregroundStyle(.white)
                .position(x: UISW * 0.6826, y: UISH * 0.443)
              
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
        }.ignoresSafeArea()
    }
    
    func checkCorrect(){
        if(displayA == "A" && displayE == "E" && displayO == "O" && displayR == "R" && displayA2 == "Á" && displayE2 == "E" && displayE3 == "E"){
            isCorrect.toggle()
            SoundManager.instance.playSound()
        }
    }
}

struct Level12View_Previews: PreviewProvider {
    static var previews: some View {
        let level12 = State(initialValue: false)
        
        return Level12View(level12: level12.projectedValue)
    }
}

