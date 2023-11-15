import SwiftUI
import PencilKit

struct PencilCanvasView: UIViewRepresentable {
    @Binding var drawing: PKDrawing

    class Coordinator: NSObject, PKCanvasViewDelegate {
        var parent: PencilCanvasView

        init(parent: PencilCanvasView) {
            self.parent = parent
        }

        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
            parent.drawing = canvasView.drawing
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.delegate = context.coordinator
        canvasView.tool = PKInkingTool(.pen, color: .brown, width: 5.0)
        canvasView.drawing = drawing
        canvasView.alpha = 0.5
        return canvasView
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        uiView.drawing = drawing
    }
}

struct Level7View: View {
    
    @Binding var level7: Bool
    @State var isCorrect: Bool = false
    @State var isMute: Bool = false
    @State var numPagina: Int = 1
    @State var pagina: Bool = false
    
    // para almacenar dibujos separados. no pude hacerlo que funcione individual
    @State private var drawings: [PKDrawing] = [PKDrawing(), PKDrawing(), PKDrawing()]

    
    var body: some View {
        
        ZStack{
            
            Image("base7")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .position(x: UIScreen.main.bounds.width * 0.290, y: UIScreen.main.bounds.height * 0.48)
           
            Image(isMute ? "btnMute" : "btnVolumen")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.05)
                .position(x: UIScreen.main.bounds.width * 0.74, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    isMute.toggle()
                }
            
            
            Image("btnSalir")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.05)
                .position(x: UIScreen.main.bounds.width * -0.13, y: UIScreen.main.bounds.height * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)){
                        level7.toggle()
                        
                    }
                }
            ZStack{
                
                if numPagina == 1 {
                    
                    Image("ejercicio1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.7)
                        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.47)
                    
                    PencilCanvasView(drawing: $drawings[0])
                        .frame(width: UIScreen.main.bounds.width * 0.54, height: UIScreen.main.bounds.height * 0.7)
                    //.background(Color.black)
                        .cornerRadius(30)
                        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.47)
                    //
                    ZStack{
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(Color.Mar)
                            .frame(width: UIScreen.main.bounds.width * 0.10, height: UIScreen.main.bounds.height * 0.05)
                        
                        Button("Limpiar") {
                            drawings[0] = PKDrawing()
                        }
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Blanco)
                    }.position(x: UIScreen.main.bounds.width * -0.098, y: UIScreen.main.bounds.height * 0.87)
                    
                    
                } else if numPagina == 2 {
                    Image("ejercicio2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.7)
                        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.47)
                    
                    PencilCanvasView(drawing: $drawings[1])
                        .frame(width: UIScreen.main.bounds.width * 0.54, height: UIScreen.main.bounds.height * 0.7)
                    //.background(Color.black)
                        .cornerRadius(30)
                        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.47)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(Color.Mar)
                            .frame(width: UIScreen.main.bounds.width * 0.10, height: UIScreen.main.bounds.height * 0.05)
                        
                        Button("Limpiar") {
                            drawings[1] = PKDrawing()
                        }
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Blanco)
                    }.position(x: UIScreen.main.bounds.width * -0.098, y: UIScreen.main.bounds.height * 0.87)
                    
                } else if numPagina == 3 {
                    Image("ejercicio3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.7)
                        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.47)
                    
                    PencilCanvasView(drawing: $drawings[2])
                        .frame(width: UIScreen.main.bounds.width * 0.54, height: UIScreen.main.bounds.height * 0.7)
                    //.background(Color.black)
                        .cornerRadius(30)
                        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.47)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(Color.Mar)
                            .frame(width: UIScreen.main.bounds.width * 0.10, height: UIScreen.main.bounds.height * 0.05)
                        
                        Button("Limpiar") {
                            drawings[2] = PKDrawing()
                        }
                        .font(.custom("futura", fixedSize: 20))
                        .bold()
                        .foregroundStyle(Color.Blanco)
                    }.position(x: UIScreen.main.bounds.width * -0.098, y: UIScreen.main.bounds.height * 0.87)
                }
                
                
                HStack(spacing: 20) {
                    //flecha izquierda
                    Image(systemName: "arrowshape.backward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(Color.CafeOscuro)
                        .opacity(numPagina > 1 ? 1 : 0)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                pagina = false
                                numPagina -= 1
                            }
                        }
                    if numPagina > 1 {
                        Text("Anterior")
                            .font(.custom("futura", size: 30))
                            .bold()
                            .foregroundStyle(Color.CafeOscuro)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    pagina = false
                                    numPagina -= 1
                                }
                            }
                    }
                    
                    
                    if numPagina < 3 {
                        Text("Siguiente")
                            .font(.custom("futura", size: 30))
                            .bold()
                            .foregroundStyle(Color.CafeOscuro)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    pagina = true
                                    numPagina += 1
                                }
                            }
                    }
                    // flecha derecha
                    Image(systemName: "arrowshape.forward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(Color.CafeOscuro)
                        .opacity(numPagina < 3 ? 1 : 0)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                pagina = true
                                numPagina += 1
                            }
                            
                        }
                }
                .position(x: UIScreen.main.bounds.width * 0.44, y:UIScreen.main.bounds.height * 0.92)
                
            }
            CongratsView(isCorrect: $isCorrect)
                .offset(y: isCorrect ? 0 : UIScreen.main.bounds.height + 500)
                .animation(.spring(duration: 0.3))
            
            
            ZStack{
                HStack{
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                        .position(x: UIScreen.main.bounds.width * 0.16, y: UIScreen.main.bounds.height * 0.12)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                        .position(x: UIScreen.main.bounds.width * 0.40, y: UIScreen.main.bounds.height * 0.12)
                }.padding(.bottom, 500)
                
                HStack{
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                        .position(x: UIScreen.main.bounds.width * 0.16, y: UIScreen.main.bounds.height * 0.12)
                    Circle()
                        .fill(Color.Cafe)
                        .frame(width: 30)
                        .position(x: UIScreen.main.bounds.width * 0.40, y: UIScreen.main.bounds.height * 0.12)
                }.padding(.top,580)
                
            }
            
        }
       // .background(Color.Gris)
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height)
        
        
    }
    
}

struct Level7View_Previews: PreviewProvider {
    static var previews: some View {
        let level7 = State(initialValue: false)
        
        return Level7View(level7: level7.projectedValue)
    }
}
