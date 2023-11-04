import SwiftUI

struct Level2View: View {
    
    @Binding var level2: Bool
    var tamaño: CGFloat = UIScreen.main.bounds.width * 0.25
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    
    @State var card1R: Double = 5
    
    @State var startCard1X: CGFloat = UIScreen.main.bounds.width * 0.10
    @State var startCard1Y: CGFloat = UIScreen.main.bounds.height * 0.90
    @State var currentCard1X: CGFloat = 0
    @State var currentCard1Y: CGFloat = 0
    
    var body: some View {
        ZStack{
            Image("base2") .resizable().scaledToFill()
            
            Image("btnSalir")
                 .resizable()
                 .scaledToFit()
                 .frame(width: UIScreen.main.bounds.width * 0.06)
                 .position(x: UIScreen.main.bounds.width * 0.08, y: UIScreen.main.bounds.height * 0.08)
                 .onTapGesture {
                     withAnimation(.spring(duration: 0.2)){
                         
                 }
         }
            Image(isMute ? "btnMute" : "btnVolumen")
                 .resizable()
                 .scaledToFit()
                 .frame(width: UIScreen.main.bounds.width * 0.06)
                 .position(x: UIScreen.main.bounds.width * 0.92, y: UIScreen.main.bounds.height * 0.08)
                 .onTapGesture {
                     isMute.toggle()
                 }
            
            ZStack{
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width * 0.55, height: UIScreen.main.bounds.height * 0.710)// tamaño del recuadro
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .position(CGPoint(x: 370.0, y: 340.0))
                
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width * 0.92, height: UIScreen.main.bounds.height * 0.15)// tamaño del recuadro
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .position(CGPoint(x: 586.0, y: 740.0))
            }
            
            HStack{
                Text("Había una") // vez
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.24, height: UIScreen.main.bounds.height * 0.1)// tamaño del recuadro
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.18, y: UIScreen.main.bounds.height * 0.14)
            }
            HStack{
                Text("una")
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.10, height: UIScreen.main.bounds.height * 0.1)// tamaño del recuadro
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.51, y: UIScreen.main.bounds.height * 0.14)
            }
            
            HStack{
                Text("pequeña ardilla llamado")
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.50, height: UIScreen.main.bounds.height * 0.1)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.31, y: UIScreen.main.bounds.height * 0.25)
            }
            HStack{
                Text("Juan, quien") // cuidaba
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.26, height: UIScreen.main.bounds.height * 0.1)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.19, y: UIScreen.main.bounds.height * 0.36)
            }
            
            HStack{
                Text("su hogar en el bosque y") //plantaba
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.49, height: UIScreen.main.bounds.height * 0.1)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.31, y: UIScreen.main.bounds.height * 0.47)
            }
            HStack{
                Text("deliciosas frutas")
                    .font(.custom("futura", fixedSize: 40).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.31, height: UIScreen.main.bounds.height * 0.1)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.40, y: UIScreen.main.bounds.height * 0.58)
            }
            HStack{
                Text("y") // nueces
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.1, height: UIScreen.main.bounds.height * 0.1)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.11, y: UIScreen.main.bounds.height * 0.69)
            }
            HStack{
                Text("para él.")
                    .font(.custom("futura", fixedSize: 42).bold())
                    .foregroundStyle(Color.Gris)
                    .frame(width: UIScreen.main.bounds.width * 0.17, height: UIScreen.main.bounds.height * 0.1)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width * 0.47, y: UIScreen.main.bounds.height * 0.69)
            }
            
            HStack(spacing: 5){
                Image("botonCuidaba")
                    .resizable()
                    .scaledToFit()
                    .frame(width: tamaño)
                    //.position(x: UIScreen.main.bounds.width * 0.10, y: UIScreen.main.bounds.height * 0.90)
                Image("botonNueces")
                    .resizable()
                    .scaledToFit()
                    .frame(width: tamaño)
                Image("botonPlantaba")
                    .resizable()
                    .scaledToFit()
                    .frame(width: tamaño)
                Image("botonVez")
                    .resizable()
                    .scaledToFit()
                    .frame(width: tamaño)
                            
            }.frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.5)
            .position(x: UIScreen.main.bounds.width * 0.50, y: UIScreen.main.bounds.height * 0.90)
                        
                        
            HStack(){
                Image("cuidabaBtn")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width * 0.34, height: UIScreen.main.bounds.height * 0.1)
                    .position(x: UIScreen.main.bounds.width * 0.47, y: UIScreen.main.bounds.height * 0.36)
            }
                        
            HStack{
                Image("vezBtn")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.1)
                    .position(x: UIScreen.main.bounds.width * 0.38, y: UIScreen.main.bounds.height * 0.14)
            }
                    
            HStack{
                Image("plantabaBtn")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.3)
                    .position(x: UIScreen.main.bounds.width * 0.14, y: UIScreen.main.bounds.height * 0.58)
            }
                        
            HStack{
                Image("nuecesBtn")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.3)
                    .position(x: UIScreen.main.bounds.width * 0.26, y: UIScreen.main.bounds.height * 0.70)
            }
           //
            
         /*   ZStack{
                Image("botonCuidaba")
                    .resizable()
                    .scaledToFit()
                    //.frame(width: tamaño)
                                
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
                            if(currentCard1X > -365 && currentCard1X < -100 && currentCard1Y > 300 && currentCard1Y < 500){
                                withAnimation(.spring(duration: 0.5)) {
                                    currentCard1X = -235
                                    currentCard1Y = 485
                                    card1R = 0
                                   // checkCorrect()
                                }
                            } else {
                                withAnimation(.spring()) {
                                    currentCard1X = 0
                                    currentCard1Y = 0
                                    card1R = 5
                                }
                            }
                        }
                )*/
       
        }
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.white)
        
    }
}

struct Level2View_Previews: PreviewProvider {
    static var previews: some View {
        let level2 = State(initialValue: false)
        
        return Level2View(level2: level2.projectedValue)
    }
}
