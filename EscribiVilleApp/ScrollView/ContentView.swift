import SwiftUI

struct ContentView: View {
    
    @State var scrollTo1: Int = 0
    @State var scrollTo2: Int = 0
    @State var scrollTo3: Int = 0
    
    @State var level1: Bool = false
    @State var level2: Bool = false
    @State var level3: Bool = false
    @State var level4: Bool = false
    @State var level5: Bool = false
    @State var level6: Bool = false
    @State var level7: Bool = false
    @State var level8: Bool = false
    @State var level9: Bool = false
    @State var level10: Bool = false
    @State var level11: Bool = false
    @State var level12: Bool = false
    @State var level13: Bool = false
    @State var level14: Bool = false
    @State var level15: Bool = false
    @State var level16: Bool = false
    @State var level17: Bool = false
    @State var level18: Bool = false
    
    var body: some View {
        ZStack{
            ScrollView(.horizontal, showsIndicators: false){
                ScrollViewReader { proxy in
                    ZStack{
                        Image("scroll-sin-btn")
                            .resizable()
                            .scaledToFill()
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 0.275, y: UIScreen.main.bounds.height * 0.62)
                            .onTapGesture {
                                level1.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 0.58, y: UIScreen.main.bounds.height * 0.7)
                            .id(1)
                            .onTapGesture {
                                level2.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 0.85, y: UIScreen.main.bounds.height * 0.56)
                            .onTapGesture {
                                level3.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 1.2, y: UIScreen.main.bounds.height * 0.61)
                            .onTapGesture {
                                level4.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 1.6, y: UIScreen.main.bounds.height * 0.69)
                            .onTapGesture {
                                level5.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 1.855, y: UIScreen.main.bounds.height * 0.53)
                            .onTapGesture {
                                level6.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 2.31, y: UIScreen.main.bounds.height * 0.62)
                            .onTapGesture {
                                level7.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 2.535, y: UIScreen.main.bounds.height * 0.41)
                            .onTapGesture {
                                level8.toggle()
                            }
                            .id(2)
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 2.805, y: UIScreen.main.bounds.height * 0.54)
                            .onTapGesture {
                                level9.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 3.23, y: UIScreen.main.bounds.height * 0.59)
                            .onTapGesture {
                                level10.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 3.63, y: UIScreen.main.bounds.height * 0.57)
                            .onTapGesture {
                                level11.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 4.04, y: UIScreen.main.bounds.height * 0.51)
                            .onTapGesture {
                                level12.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 4.53, y: UIScreen.main.bounds.height * 0.69)
                            .onTapGesture {
                                level13.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 4.75, y: UIScreen.main.bounds.height * 0.48)
                            .onTapGesture {
                                level14.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 5.015, y: UIScreen.main.bounds.height * 0.605)
                            .onTapGesture {
                                level15.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 5.445, y: UIScreen.main.bounds.height * 0.66)
                            .onTapGesture {
                                level16.toggle()
                            }

                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 5.85, y: UIScreen.main.bounds.height * 0.65)
                            .onTapGesture {
                                level17.toggle()
                            }
                        Image("boton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .position(x: UIScreen.main.bounds.width * 6.255, y: UIScreen.main.bounds.height * 0.6)
                            .onTapGesture {
                                level18.toggle()
                            }.id(3)
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            withAnimation(.spring(duration: 0)) {
                                proxy.scrollTo(2, anchor: .leading)
                            }
                        }
                    }
                    .onChange(of: scrollTo1) { newValue in
                        withAnimation(.spring(duration: 20)) {
                            proxy.scrollTo(newValue, anchor: .leading)
                        }
                    }
                    .onChange(of: scrollTo2) { newValue in
                        withAnimation(.spring(duration: 20)) {
                            let anchorPoint = UnitPoint(x: 450 / UIScreen.main.bounds.width, y: 0)
                            proxy.scrollTo(newValue, anchor: anchorPoint)
                        }
                    }
                    .onChange(of: scrollTo3) { newValue in
                        withAnimation(.spring(duration: 20)) {
                            let anchorPoint = UnitPoint(x: 900 / UIScreen.main.bounds.width, y: 0)
                            proxy.scrollTo(newValue, anchor: anchorPoint)
                        }
                    }
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .background(Color.black)
                    .frame(width: 250, height: 70)
                    .cornerRadius(40)
                    .opacity(0.34)
                
                HStack{
                    Circle()
                        .fill()
                        .frame(width: 40)
                        .foregroundColor(Color.Verde)
                        .padding()
                        .onTapGesture {
                            withAnimation(.spring(duration: 20)) {
                                scrollTo1 = 1
                                scrollTo2 = 0
                                scrollTo3 = 0
                            }
                        }
                    Circle()
                        .fill()
                        .frame(width: 40)
                        .foregroundColor(Color.Sand)
                        .padding()
                        .onTapGesture {
                            withAnimation(.spring(duration: 20)) {
                                scrollTo1 = 0
                                scrollTo2 = 1
                                scrollTo3 = 0     
                            }
                   }
                    Circle()
                        .fill()
                        .frame(width: 40)
                        .foregroundColor(Color.Mar)
                        .padding()
                        .onTapGesture {
                            withAnimation(.spring(duration: 20)) {
                                scrollTo1 = 0
                                scrollTo2 = 0
                                scrollTo3 = 1  
                            }
                      }
                }
            }.position(x: UIScreen.main.bounds.width * 0.15, y: UIScreen.main.bounds.height * 0.12)
            
            Level1View(level1 : $level1)
                .offset(y: level1 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level2View(level2 : $level2)
                .offset(y: level2 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level3View(level3 : $level3)
                .offset(y: level3 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            Level4View(level4 : $level4)
                .offset(y: level4 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level5View(level5 : $level5)
                .offset(y: level5 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level6View(level6 : $level6)
                .offset(y: level6 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            Level7View(level7 : $level7)
                .offset(y: level7 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level8View(level8 : $level8)
                .offset(y: level8 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level9View(level9 : $level9)
                .offset(y: level9 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            Level10View(level10 : $level10)
                .offset(y: level10 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level11View(level11 : $level11)
                .offset(y: level11 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level12View(level12 : $level12)
                .offset(y: level12 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            Level13View(level13 : $level13)
                .offset(y: level13 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level14View(level14 : $level14)
                .offset(y: level14 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level15View(level15 : $level15)
                .offset(y: level15 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            Level16View(level16 : $level16)
                .offset(y: level16 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level17View(level17 : $level17)
                .offset(y: level17 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
            Level18View(level18 : $level18)
                .offset(y: level18 ? 0 : UIScreen.main.bounds.height + 300)
                .animation(.spring)
            
        }.ignoresSafeArea()
            .background(Color.Azul)
    }
}

#Preview {
    ContentView()
}
