import SwiftUI

struct Level11View: View {
    
    @Binding var level11: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    @State var numPagina: Int = 1
    @State var pagina: Bool = false
    
    @State var UISW: CGFloat = UIScreen.main.bounds.width
    @State var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State private var path = Path()
    @State private var isDrawing = false
    
    //Sección para las letras
    // PALABRA ALGA
    @State var inputA: String = ""
    @State var displayA: String = ""
    
    @State var inputL: String = ""
    @State var displayL: String = ""
    
    @State var inputG: String = ""
    @State var displayG: String = ""
    
    @State var inputA2: String = ""
    @State var displayA2: String = ""
    
    // PALABRA PEZ
    @State var inputP: String = ""
    @State var displayP: String = ""
    
    @State var inputE: String = ""
    @State var displayE: String = ""
    
    @State var inputZ: String = ""
    @State var displayZ: String = ""
    
    // PALABRA ARENA
    @State var inputA3: String = ""
    @State var displayA3: String = ""
    
    @State var inputR: String = ""
    @State var displayR: String = ""
    
    @State var inputE2: String = ""
    @State var displayE2: String = ""
    
    @State var inputN: String = ""
    @State var displayN: String = ""
    
    @State var inputA4: String = ""
    @State var displayA4: String = ""
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.Cafe)
                .frame(width: UIScreen.main.bounds.width  * 0.99, height: UIScreen.main.bounds.height  * 0.99)
            
        
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.06)
                .position(x: UIScreen.main.bounds.width * 0.1, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level11.toggle()
                        numPagina = 1
                        inputA = ""
                        inputL = ""
                        inputG = ""
                        inputA2 = ""
                        inputP = ""
                        inputE = ""
                        inputZ = ""
                        inputA3 = ""
                        inputR = ""
                        inputE2 = ""
                        inputN = ""
                        inputA4 = ""
                        displayA = ""
                        displayL = ""
                        displayG = ""
                        displayA2 = ""
                        displayP = ""
                        displayE = ""
                        displayZ = ""
                        displayA3 = ""
                        displayR = ""
                        displayE2 = ""
                        displayN = ""
                        displayA4 = ""
                    }
                }
            
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.06)
                .position(x: UIScreen.main.bounds.width * 0.9, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    isMute.toggle()
                }
            
            ZStack{
                
                if numPagina == 1 {
                
                    Image("ejPez")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.80, height: UIScreen.main.bounds.height * 0.9)
                    // PALABRA PEZ - P
                    Text("P")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        //.frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.35, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputP)
                         .font(.custom("futura", fixedSize: 90).bold())
                         .frame(width: UIScreen.main.bounds.width * 0.09)
                         .position(x: UIScreen.main.bounds.width * 0.355, y: UIScreen.main.bounds.height * 0.72)
                         .foregroundColor(Color.ArenaOscura)
                         .padding(.horizontal)
                         .onTapGesture {
                             displayP = ""
                             inputP = ""
                         }
                         .onChange(of: inputP) { newValue in
                             if newValue.lowercased() == "p" {
                                 displayP = "P"
                                 checkCorrect()
                             } else {
                                 inputP = ""
                                 displayP = ""
                             }
                         }
                     
                    // PALABRA PEZ - E
                    Text("E")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.49, y: UIScreen.main.bounds.height * 0.72)
                    
                    TextField("", text: $inputE)
                         .font(.custom("futura", fixedSize: 90).bold())
                         .frame(width: UIScreen.main.bounds.width * 0.09)
                         .position(x: UIScreen.main.bounds.width * 0.50, y: UIScreen.main.bounds.height * 0.72)
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
                                 inputE = ""
                                 displayE = ""
                             }
                         }
                    // PALABRA PEZ - Z
                    Text("Z")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.63, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputZ)
                         .font(.custom("futura", fixedSize: 90).bold())
                         .frame(width: UIScreen.main.bounds.width * 0.09)
                         .position(x: UIScreen.main.bounds.width * 0.633, y: UIScreen.main.bounds.height * 0.72)
                         .foregroundColor(Color.ArenaOscura)
                         .padding(.horizontal)
                         .onTapGesture {
                             displayZ = ""
                             inputZ = ""
                         }
                         .onChange(of: inputZ) { newValue in
                             if newValue.lowercased() == "z" {
                                 displayZ = "Z"
                                 checkCorrect()
                             } else {
                                 inputZ = ""
                                 displayZ = ""
                             }
                         }
                    
                } else if numPagina == 2 {
                    
                    Image("ejAlga")
                         .resizable()
                         .scaledToFit()
                         .frame(width: UIScreen.main.bounds.width * 0.80, height: UIScreen.main.bounds.height * 0.9)
                    // PALBRA ALGA - A
                    Text("A")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.29, y: UIScreen.main.bounds.height * 0.72)
                    
                    TextField("", text: $inputA)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.29, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(.ArenaOscura)
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
                                inputA = ""
                                displayA = ""
                            }
                        }
                    Text("\(displayA)")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.ArenaOscura)
                        .position(x: UISW * 0.29, y: UISH * 0.72)
                    
                    // PALBRA ALGA - L
                    Text("L")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UISW * 0.431, y: UISH * 0.72)
                    
                    TextField("", text: $inputL)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UISW * 0.441, y: UISH * 0.72)
                        .foregroundColor(Color.ArenaOscura)
                        .padding(.horizontal)
                        .onTapGesture {
                            displayL = ""
                            inputL = ""
                        }
                        .onChange(of: inputL) { newValue in
                            if newValue.lowercased() == "l" {
                                displayL = "L"
                                checkCorrect()
                            } else {
                                inputL = ""
                                displayL = ""
                            }
                        }
                    Text("\(displayL)")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.ArenaOscura)
                        .position(x: UISW * 0.430, y: UISH * 0.72)
                    
                    // PALBRA ALGA - G
                    Text("G")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.57, y: UIScreen.main.bounds.height * 0.72)
                    
                    TextField("", text: $inputG)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 1.01)
                        .position(x: UISW * 1.028, y: UISH * 0.72)
                        .foregroundColor(Color.ArenaOscura)
                        .padding(.horizontal)
                        .onTapGesture {
                            displayG = ""
                            inputG = ""
                        }
                        .onChange(of: inputG) { newValue in
                            if newValue.lowercased() == "g" {
                                displayG = "G"
                                checkCorrect()
                            } else {
                                inputG = ""
                                displayG = ""
                            }
                        }
                    Text("\(displayG)")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.ArenaOscura)
                        .position(x: UISW * 1.028, y: UISH * 0.72)
                    
                    // PALBRA ALGA - A
                    Text("A")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.715, y: UIScreen.main.bounds.height * 0.72)
                    
                    TextField("", text: $inputA2)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 1.02)
                        .position(x: UIScreen.main.bounds.width * 1.180, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(Color.ArenaOscura)
                        .padding(.horizontal)
                        .onTapGesture {
                            displayA2 = ""
                            inputA2 = ""
                        }
                        .onChange(of: inputA2) { newValue in
                            if newValue.lowercased() == "a" {
                                displayA2 = "A"
                                checkCorrect()
                            } else {
                                inputA2 = ""
                                displayA2 = ""
                            }
                        }
                    Text("\(displayA)")
                        .font(.custom("futura", fixedSize: 90))
                        .bold()
                        .foregroundStyle(Color.ArenaOscura)
                        .position(x: UISW * 1.180, y: UISH * 0.72)
                    
                } else if numPagina == 3 {
                    Image("ejArena")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.80, height: UIScreen.main.bounds.height * 0.9)
                    Text("A")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.22, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputA3)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.22, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(.ArenaOscura)
                        .padding(.horizontal)
                        .onTapGesture {
                            displayA3 = ""
                            inputA3 = ""
                        }
                        .onChange(of: inputA3) { newValue in
                            if newValue.lowercased() == "a" {
                                displayA3 = "A"
                                checkCorrect()
                            } else {
                                inputA3 = ""
                                displayA3 = ""
                            }
                        }
                   
                   
                    Text("R")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.362, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputR)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.365, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(.ArenaOscura)
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
                                inputR = ""
                                displayR = ""
                            }
                        }
                    
                   Text("E")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.503, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputE2)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.512, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(.ArenaOscura)
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
                                inputE2 = ""
                                displayE2 = ""
                            }
                        }
                    
                    Text("N")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .position(x: UIScreen.main.bounds.width * 0.646, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputN)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.644, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(.ArenaOscura)
                        .padding(.horizontal)
                        .onTapGesture {
                            displayN = ""
                            inputN = ""
                        }
                        .onChange(of: inputN) { newValue in
                            if newValue.lowercased() == "n" {
                                displayN = "N"
                                checkCorrect()
                            } else {
                                inputN = ""
                                displayN = ""
                            }
                        }
                    
                    Text("A")
                        .font(.custom("futura", fixedSize: 90).bold())
                        .foregroundStyle(Color.GrisClaro)
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.79, y: UIScreen.main.bounds.height * 0.72)
                    TextField("", text: $inputA4)
                        .font(.custom("futura", fixedSize: 90).bold())
                        .frame(width: UIScreen.main.bounds.width * 0.09)
                        .position(x: UIScreen.main.bounds.width * 0.79, y: UIScreen.main.bounds.height * 0.72)
                        .foregroundColor(.ArenaOscura)
                        .padding(.horizontal)
                        .onTapGesture {
                            displayA4 = ""
                            inputA4 = ""
                        }
                        .onChange(of: inputA4) { newValue in
                            if newValue.lowercased() == "a" {
                                displayA4 = "A"
                                checkCorrect()
                            } else {
                                inputA4 = ""
                                displayA4 = ""
                            }
                        }
                 }
                
                
                
                 HStack(spacing: 20) {
                 //flecha izquierda
                    Image(systemName: "arrowshape.backward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(Color.Blanco)
                        .opacity(numPagina > 1 ? 1 : 0)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                //pagina = false
                                numPagina -= 1
                            }
                        }
                     if numPagina > 1 {
                         Text("Anterior")
                             .font(.custom("futura", size: 30))
                             .bold()
                             .foregroundStyle(.white)
                             .onTapGesture {
                                 withAnimation(.spring()) {
                                    // pagina = false
                                     numPagina -= 1
                                 }
                             }
                     }
                 
                 
                     if numPagina < 3 {
                         Text("Siguiente")
                             .font(.custom("futura", size: 30))
                             .bold()
                             .foregroundStyle(.white)
                             .onTapGesture {
                                 withAnimation(.spring()) {
                                     //pagina = true
                                     numPagina += 1
                                 }
                             }
                     }
                     // flecha derecha
                     Image(systemName: "arrowshape.forward.fill")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 40)
                         .foregroundStyle(Color.Blanco)
                         .opacity(numPagina < 3 ? 1 : 0)
                         .onTapGesture {
                             withAnimation(.spring()) {
                                 //pagina = true
                                 numPagina += 1
                             }
                             
                         }
                 }
                 .padding(.top, UIScreen.main.bounds.height * 0.85)
            }
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
            ZStack{
                HStack(spacing: UIScreen.main.bounds.width * 0.70){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                }.padding(.bottom, 500)
                
                HStack(spacing: UIScreen.main.bounds.width * 0.70){
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                }.padding(.top,510)
                
            }
            
        }.ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.Cafe)
        
    }
    
    func checkCorrect(){
        if(displayA == "A" && displayL == "L" && displayG == "G" && displayA2 == "A" && displayP == "P" && displayE2 == "E" && displayZ == "Z" && displayA3 == "A" && displayR == "R" && displayE2 == "E" && displayN == "N" && displayA4 == "A"){
            isCorrect.toggle()
            SoundManager.instance.playSound()
        }
    }
}

struct Level11View_Previews: PreviewProvider {
    static var previews: some View {
        let level11 = State(initialValue: false)
        
        return Level11View(level11: level11.projectedValue)
    }
}
