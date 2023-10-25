import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound(){
        guard let url = Bundle.main.url(forResource: "correct", withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}

struct CongratsView: View {
    
    @Binding var isCorrect: Bool
    
    var body: some View {
            
            ZStack{
                Color.black
                    .opacity(0.6)
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.6)
                        .foregroundColor(Color.white)
                    
                    GIFImage("star-snfondo")
                        .frame(width: UIScreen.main.bounds.width * 0.5)
                        .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.6)
                    
                    VStack{
                            
                        Text("¡¡Felicidades!!")
                            .font(.largeTitle .weight(.bold))
                            .foregroundColor(Color(UIColor(red: 0.04, green: 0.24, blue: 0.46, alpha: 1.00)))
                        Text("Completaste este nivel")
                            .font(.title .weight(.semibold))
                            .foregroundColor(Color(UIColor(red: 0.04, green: 0.24, blue: 0.46, alpha: 1.00)))
                            .padding(.top,10)
                        Button {
                            isCorrect.toggle()
                        } label: {
                            Text("Cerrar".uppercased())
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.white)
                                .padding(10)
                                .frame(width: UIScreen.main.bounds.width * 0.13)
                                .background(Color(UIColor(red: 0.04, green: 0.24, blue: 0.46, alpha: 1.00)))
                        }.padding(.top, 30)
                            .cornerRadius(10)

                        
                        
                    }.position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.6)
                }

                
            }
                .ignoresSafeArea()
        }
    }

struct CongratsView_Previews: PreviewProvider {
    static var previews: some View {
        let isCorrect = State(initialValue: false)
        return CongratsView(isCorrect: isCorrect.projectedValue)
    }
}

