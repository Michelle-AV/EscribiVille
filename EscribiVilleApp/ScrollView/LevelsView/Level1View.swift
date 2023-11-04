import SwiftUI

struct Level1View: View {
    @Binding var level1: Bool
    @State private var currentPage = 1
    @State var isMute: Bool = false
    @State var isCorrect: Bool = false
    //let maxPages = 6
    
    var body: some View {
       VStack {
           ZStack{
               Image("btnSalir")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.06)
                    .position(x: UIScreen.main.bounds.width * 0.08, y: UIScreen.main.bounds.height * 0.08)
                    .onTapGesture {
                        withAnimation(.spring(duration: 0.2)){
                            currentPage = 0
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
            Button(action: {
                withAnimation {
                    currentPage += 1
                    if currentPage > 6 {
                        currentPage = 1
                    }
                }
            }) {
                Text("Siguiente".uppercased())
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color .white, lineWidth: 2))
                    .background(Color.mint)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                }.position(CGPoint(x: 600.0, y: 80.0))
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
               // .background(Color.white)
                
                if currentPage == 1 {
                    Page1View()
                } else if currentPage == 2{
                    Page2View()
                } else if currentPage == 3{
                    Page3View()
                } else if currentPage == 4{
                    Page4View()
                } else if currentPage == 5{
                    Page5View()
                } else {
                    Page6View()
                }
            }.background(Color.white)
           
        }
    }
}

struct Page1View: View {
    var body: some View {
        HStack(spacing: 30){
            
            Image("imagen1")
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height * 0.80)
                .position(CGPoint(x: 260.0, y: 440.0))
                .shadow(radius: 30)
            
          Text("En un bosque alegre vivía Tito, un conejito con orejas largas y suaves")
                .font(.custom("futura", fixedSize: 55).bold())
                .foregroundStyle(Color.Gris)
                .position(CGPoint(x: 300.0, y: 210.0)) //texto
                .frame(width: UIScreen.main.bounds.width * 0.50, height: UIScreen.main.bounds.height * 0.5)// tamaño del recuadro
                .background(Color.Blanco)
                .cornerRadius(20)
                .position(x: 230, y: 440) //cuadro
           
        }
    }
}
    
struct Page2View: View {
    var body: some View {
        VStack(spacing: 30){
            Image("imagen2")
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .position(CGPoint(x: 600.0, y: 330.0))
                .shadow(radius: 30)
               
            
            Text("A Tito le gustaba mucho explorar, pero a veces se sentía asustado porque era pequeñito")
                .font(.custom("futura", fixedSize: 55).bold())
                .foregroundStyle(Color.Gris)
                .position(CGPoint(x: 500.0, y: 120.0))
                .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.3)
                .background(Color.Blanco)
                .cornerRadius(20)
                .position(x: UIScreen.main.bounds.width * 0.500, y: UIScreen.main.bounds.height * 0.3)
        }
    }
}
    
struct Page3View: View {
    var body: some View {
        HStack(spacing: 30){
            Image("imagen3")
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height * 0.85)
                .position(CGPoint(x: 260.0, y: 420.0))
                .shadow(radius: 30)
                
            
            Text("Un día mientras jugaba, Tito encontró un pajarito que se sentía triste")
                .font(.custom("futura", fixedSize: 55).bold())
                .foregroundStyle(Color.Gris)
                .position(CGPoint(x: 300.0, y: 210.0))
                .frame(width: UIScreen.main.bounds.width * 0.50, height: UIScreen.main.bounds.height * 0.5)
                .background(Color.Blanco)
                .cornerRadius(20)
                .position(x: 230, y: 440)
            
        }
    }
}
    
struct Page4View: View {
    var body: some View {
        ZStack {
            Image("imagen4")
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height * 0.80)
                .position(CGPoint(x: 900.0, y: 440.0))
                .shadow(radius: 30)
          
            HStack {
                    Text("Tito lo cuidó y lo hizo sentir mejor. Se hicieron amigos y juntos descubrieron el bosque.")
                    .font(.custom("futura", fixedSize: 55).bold())
                    .foregroundStyle(Color.Gris)
                    .position(CGPoint(x: 310.0, y: 250.0))
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.6)
                    .background(Color.Blanco)
                    .cornerRadius(20)
                    .position(CGPoint(x: 340.0, y: 440.0))
            }
        }
    }
}
    
struct Page5View: View {
    var body: some View {
        VStack(spacing: 20){
            Image("imagen5")
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height * 0.60)
                .position(CGPoint(x: 600.0, y: 290.0))
                .shadow(radius: 30)
           
            
            Text("Tito aprendió que ser valiente significa ayudar a los amigos, ¡y eso lo convirtió en un héroe en su mundo!")
                .font(.custom("futura", fixedSize: 50).bold())
                .foregroundStyle(Color.Gris)
                .position(CGPoint(x: 535.0, y: 97.0))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.25)
                .background(Color.Blanco)
                .cornerRadius(20)
                .position(x: UIScreen.main.bounds.width * 0.500, y: UIScreen.main.bounds.height * 0.3)
            
        }
    }
}
    
struct Page6View: View {
    var body: some View {
        HStack {
            Image("imagen6")
                .resizable()
                .scaledToFit()
                .frame(width: 450)
                .position(CGPoint(x: 260.0, y: 410.0))
                .shadow(radius: 30)
            
            Text("Desde entonces, Tito y su amigo Mati vivieron aventuras felices. Tito sabía que no importa cuán pequeño seas, ¡Puedes hacer cosas asombrosas!")
                .font(.custom("futura", fixedSize: 50).bold())
                .foregroundStyle(Color.Gris)
                .position(CGPoint(x: 305.0, y: 300.0))
                .frame(width: UIScreen.main.bounds.width * 0.50, height: UIScreen.main.bounds.height * 0.75)// tamaño del marco (ancho-largo)
                .background(Color.Blanco)
                .cornerRadius(20)
                .position(x: 220, y: 450)
        }
    }
}

struct Level1View_Previews: PreviewProvider {
    static var previews: some View {
        let level1 = State(initialValue: false)
        
        return Level1View(level1: level1.projectedValue)
    }
}
