import SwiftUI

struct Level10View: View {
    
    @Binding var level10: Bool
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    @State var UISW: CGFloat = UIScreen.main.bounds.width
    @State var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var input1: String = ""
    @State var display1: String = ""
    
    @State var input2: String = ""
    @State var display2: String = ""
    
    @State var input3: String = ""
    @State var display3: String = ""
    
    @State var input4: String = ""
    @State var display4: String = ""
    
    @State var input5: String = ""
    @State var display5: String = ""
    
    @State var input6: String = ""
    @State var display6: String = ""
    
    @State var nivel1: Bool = true
    @State var nivel2: Bool = false
    @State var nivel3: Bool = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: UISW, height: UISH)
                .opacity(0.6)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.Blanco)
                .frame(width: UISW * 0.86, height: UISH * 0.8)
            
            HStack(spacing: UIScreen.main.bounds.width * 0.8){
                Circle()
                    .fill(Color.Cafe)
                    .frame(width: 20)
                Circle()
                    .fill(Color.Cafe)
                    .frame(width: 20)
            }.position(x: UISW * 0.5, y: UISH * 0.135)
            
            HStack(spacing: UIScreen.main.bounds.width * 0.8){
                Circle()
                    .fill(Color.Cafe)
                    .frame(width: 20)
                Circle()
                    .fill(Color.Cafe)
                    .frame(width: 20)
            }.position(x: UISW * 0.5, y: UISH * 0.865)
            
            Image("act4-1")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 0.8)
                .opacity(nivel1 ? 1 : 0)
            
            Image("act4-2")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 0.8)
                .opacity(nivel2 ? 1 : 0)
            
            Image("act4-3")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 0.8)
                .padding(.top, 90)
                .opacity(nivel3 ? 1 : 0)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.red, lineWidth: 2)
                .frame(width: UISW * 0.2, height: UISH * 0.18)
                .position(x: UISW * 0.804, y: UISH * 0.735)
            
            TextField("", text: $input1)
                .frame(width: 230, height: 20)
                .font(.largeTitle)
                .padding(.leading, 20)
                .position(x: UISW * 0.196, y: UISH * 0.735)
                .foregroundColor(Color.GrisClaro)
                .onTapGesture {
                    display1 = ""
                    input1 = ""
                }
                .onChange(of: input1) { newValue in
                    if newValue.count >= 3 {
                        input1 = String(newValue.prefix(3))
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)                   
                    }
                    display1 = input1.uppercased()
                    checkCangrejo()
                }.opacity(nivel1 ? 1 : 0)
            
            Text("\(display1)")
                .font(.custom("futura", fixedSize: 70))
                .bold()
                .foregroundStyle(.black)
                .position(x: UISW * 0.196, y: UISH * 0.735)
                .opacity(nivel1 ? 1 : 0)
            
            TextField("", text: $input2)
                .font(.largeTitle)
                .padding(.leading, 20)
                .frame(width: 230, height: UISH)
                .position(x: UISW * 0.496, y: UISH * 0.735)
                .foregroundColor(Color.GrisClaro)
                .onTapGesture {
                    display2 = ""
                    input2 = ""
                }
                .onChange(of: input2) { newValue in
                    if newValue.count >= 3 {
                        input2 = String(newValue.prefix(3))
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                    display2 = input2.uppercased()
                    checkCangrejo()
                }.opacity(nivel1 ? 1 : 0)
            
            Text("\(display2)")
                .font(.custom("futura", fixedSize: 70))
                .bold()
                .foregroundStyle(.black)
                .background(Color.clear)
                .position(x: UISW * 0.496, y: UISH * 0.735)
                .opacity(nivel1 ? 1 : 0)
            
            TextField("", text: $input3)
                .font(.largeTitle)
                .padding(.leading, 20)
                .frame(width: 230, height: UISH)
                .position(x: UISW * 0.804, y: UISH * 0.735)
                .foregroundColor(Color.GrisClaro)
                .onTapGesture {
                    display3 = ""
                    input3 = ""
                }
                .onChange(of: input3) { newValue in
                    if newValue.count >= 2 {
                        input3 = String(newValue.prefix(2))
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                    display3 = input3.uppercased()
                    checkCangrejo()
                }.opacity(nivel1 ? 1 : 0)
            
            Text("\(display3)")
                .font(.custom("futura", fixedSize: 70))
                .bold()
                .foregroundStyle(.black)
                .background(Color.clear)
                .position(x: UISW * 0.804, y: UISH * 0.755)
                .opacity(nivel1 ? 1 : 0)
            
            TextField("", text: $input4)
                .frame(width: 230, height: 20)
                .font(.largeTitle)
                .padding(.leading, 20)
                .position(x: UISW * 0.196, y: UISH * 0.735)
                .foregroundColor(Color.GrisClaro)
                .onTapGesture {
                    display4 = ""
                    input4 = ""
                }
                .onChange(of: input4) { newValue in
                    if newValue.count >= 2 {
                        input4 = String(newValue.prefix(2))
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                    display4 = input4.uppercased()
                    checkPelota()
                }.opacity(nivel2 ? 1 : 0)
            
            Text("\(display4)")
                .font(.custom("futura", fixedSize: 70))
                .bold()
                .foregroundStyle(.black)
                .position(x: UISW * 0.196, y: UISH * 0.755)
                .opacity(nivel2 ? 1 : 0)
            
            TextField("", text: $input5)
                .font(.largeTitle)
                .padding(.leading, 20)
                .frame(width: 230, height: UISH)
                .position(x: UISW * 0.496, y: UISH * 0.755)
                .foregroundColor(Color.GrisClaro)
                .onTapGesture {
                    display5 = ""
                    input5 = ""
                }
                .onChange(of: input5) { newValue in
                    if newValue.count >= 2 {
                        input5 = String(newValue.prefix(2))
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                    display5 = input5.uppercased()
                    checkPelota()
                }.opacity(nivel2 ? 1 : 0)
            
            Text("\(display5)")
                .font(.custom("futura", fixedSize: 70))
                .bold()
                .foregroundStyle(.black)
                .background(Color.clear)
                .position(x: UISW * 0.496, y: UISH * 0.755)
                .opacity(nivel2 ? 1 : 0)
            
            TextField("", text: $input6)
                .font(.largeTitle)
                .padding(.leading, 20)
                .frame(width: 230, height: UISH)
                .position(x: UISW * 0.804, y: UISH * 0.755)
                .foregroundColor(Color.GrisClaro)
                .onTapGesture {
                    display6 = ""
                    input6 = ""
                }
                .onChange(of: input6) { newValue in
                    if newValue.count >= 2 {
                        input6 = String(newValue.prefix(2))
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                    display6 = input6.uppercased()
                    checkPelota()
                }.opacity(nivel2 ? 1 : 0)
            
            Text("\(display6)")
                .font(.custom("futura", fixedSize: 70))
                .bold()
                .foregroundStyle(.black)
                .background(Color.clear)
                .position(x: UISW * 0.804, y: UISH * 0.755)
                .opacity(nivel2 ? 1 : 0)

            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.045)
                .position(x: UIScreen.main.bounds.width * 0.04, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level10.toggle()
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
        }.ignoresSafeArea()
    }
    
    func checkCangrejo(){
        if(display1 == "CAN" && display2 == "GRE" && display3 == "JO"){
            withAnimation(.spring(duration: 0.5)) {
                nivel1 = false
                nivel2 = true
            }
        }
    }
    
    func checkPelota(){
        if(display4 == "PE" && display5 == "LO" && display6 == "TA"){
            withAnimation(.spring(duration: 0.5)) {
                nivel2 = false
                nivel3 = true
            }
        }
    }
    
}

struct Level10View_Previews: PreviewProvider {
    static var previews: some View {
        let level10 = State(initialValue: false)
        
        return Level10View(level10: level10.projectedValue)
    }
}
