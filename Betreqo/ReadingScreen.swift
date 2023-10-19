//
//  ReadingScreen.swift
//  Betreqo
//
//  Created by mariyam yasin on 02/04/1445 AH.
//

import SwiftUI
import AVFoundation
class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "story", withExtension: ".mp3") else { return }
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
        
    }
}

struct ReadingScreen: View {
    
    var soundmanger = SoundManager()
    
    // var audioPlayer: Sound
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xF8F8F8)
                    .edgesIgnoringSafeArea(.all)
                
                Image("fox")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 328.57, height: 262)
                    .padding(.bottom,900)
                
                Rectangle()
                    .fill(Color(hex: 0xFCF5EC))
                    .frame(width: 685, height: 551)
                    .border(Color(hex: 0xFFFFFF), width: 10)
                    .position(x: 420, y: 600)
                Button(action: {
                    SoundManager.instance.playSound()
                    // Add your action here when the button is tapped
                    print("Button tapped!")
                }) {
                    Image("speaker")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                        .position(x: 150, y: 400)
                }
                
                VStack {
                    Spacer()
                    Text("الثعلب")
                        .foregroundColor(.BlueColor)
                    
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                        .position(x: 410, y: 400)
                }
                HStack {
                    Text("قريبًا من مكةَ المكرّمةِ يقع ")
                        .multilineTextAlignment(.trailing)
                        .font(.custom( "Ithra", size: 24))
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                        .lineSpacing(25)
                        .position(x: 570, y:500)
                    
                    //                    Button("جبل") {
                    //
                    //                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    //                    }
                    //                    .multilineTextAlignment(.trailing)
                    //                    .font(.custom( "Ithra", size: 24))
                    //                    .fontWeight(.medium)
                    //                    .lineSpacing(25)
                    //                    .position(x: 125, y:500)
                    //                    .tint(.RedColor)
                    
                    
                    Button{} label: {
                        
                        NavigationLink(destination: DictationScreen()) {
                            Text("جبلَ").multilineTextAlignment(.trailing)
                                .font(.custom( "Ithra", size: 24))
                                .fontWeight(.medium)
                                .lineSpacing(25)
                                .position(x: 125, y:500)
                                .tint(.RedColor)
                            
                            
                        }}
                    
                    
                    
                    Text(" صغيرٌ يُعرفُ بقرنِ الثعالبِ،")
                        .multilineTextAlignment(.trailing)
                        .font(.custom( "Ithra", size: 24))
                        .fontWeight(.medium)
                    
                        .position(x: -305, y:500)
                }
                HStack {
                    Text("وذلك لكثرة ما")
                        .multilineTextAlignment(.trailing)
                        .font(.custom( "Ithra", size: 24))
                        .fontWeight(.medium)
                    
                        .position(x: 580, y:505)
                    Button("تأوي") {
                    }
                    .font(.custom( "Ithra", size: 24))
                    .fontWeight(.medium)
                    .position(x: 105, y:505)
                    .tint(.RedColor)
                }
                .padding(50)
                
                HStack {
                    Text(" إليهِ الثعالبُ، وكانَ هناكَ ثعلبٌ " )
                        .multilineTextAlignment(.trailing)
                        .font(.custom( "Ithra", size: 24))
                        .fontWeight(.medium)
                    
                        .position(x: 340, y:555)
                    
                }
                
                HStack {
                    Text("كان هذا الثعلبٌ لا يملكُ ذيلًا ")
                        .multilineTextAlignment(.trailing)
                        .font(.custom( "Ithra", size: 24))
                        .fontWeight(.medium)
                        .position(x: 550, y:670)
                    
                    
                    
                    
                    Button{} label: {
                        
                        NavigationLink(destination: DictationScreen()) {
                            Text("الثعالبَ").font(.custom("Ithra",size: 24))
                                .foregroundColor(.RedColor)
                                .offset(x:-590 , y:89)
                            
                            
                        }}
                    
                    
                    
                }
                
                Text("كان هذا الثعلبٌ لا يملكُ ذيلًا ")
                    .multilineTextAlignment(.trailing)
                    .font(.custom( "Ithra", size: 24))
                    .fontWeight(.medium)
                    .position(x: 550, y:670)
                
                Text(" معَ والديهِ ومجموعةً منَ الثعالبِ في تلكَ المنطقة.")
                    .multilineTextAlignment(.trailing)
                    .font(.custom( "Ithra", size: 24))
                    .fontWeight(.medium)
                    .position(x: 445, y:610)
                
                Text("طويلًا كباقي ")
                    .multilineTextAlignment(.trailing)
                    .font(.custom( "Ithra", size: 24))
                    .fontWeight(.medium)
                    .position(x: 320, y:670)
                
                
                
                
                
                Text("وذلك لأن ذيلهُ قد تعرضَ للقطعِ بالكامل بواسطةِ فخٍ \n حديديٍ قدْ تمّ نصبهُ من قبل أحدِ صيادي الثعالب عند الجبل. ")
                    .font(.custom( "Ithra", size: 24))
                    .fontWeight(.medium)
                    .lineSpacing(15)
                    .multilineTextAlignment(.trailing)
                    .position(x: 420, y:750)
                
                
                
                Image("alert")
                    .frame(width: 7, height: 7)
                    .position(x: 710, y:910)
                Text(" قم بالنقر على الكلمة حتى يتم إملائها عليك ")
                    .font(.custom( "Ithra", size: 18))
                    .fontWeight(.bold)
                    .position(x: 510, y:910)
                
                HStack{
                    VStack (spacing: 20) {
                        Image(systemName: "arrowshape.backward.fill")
                            .resizable()
                            .frame(width: 40.0, height: 20.0)
                            .shadow(color: .gray, radius: 1, x: 0, y: 4)
                        
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(Color.bgColor)
                            .background(Color.gray)
                            .cornerRadius(40)
                            .shadow(radius: 10)
                            .padding(.top,30.0)
                        
                        Text(" الصفحة السابقة")
                            .font(.custom( "Ithra", size: 26))
                            .foregroundColor(Color.gray)
                            .fontWeight(.bold)
                    }.offset(x:-160 , y:430)
                    
                    VStack (spacing: 20) {
                        
                        Image(systemName: "arrowshape.forward.fill")
                            .resizable()
                            .frame(width: 40.0, height: 20.0)
                            .shadow(color: .gray, radius: 1, x: 0, y: 4)
                        
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(Color.bgColor)
                            .background(Color.gray)
                            .cornerRadius(40)
                            .shadow(radius: 10)
                            .padding(.top,30.0)
                        
                        Text(" الصفحة التالية")
                            .font(.custom( "Ithra", size: 26))
                            .foregroundColor(Color.gray)
                            .fontWeight(.bold)
                    }.offset(x:160 , y:430)
                }
                //            //hstack
                
            }
            
        }
        
    }
    
}


extension Color {
    init(hex: UInt) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: 1.0
        )
    }
    
}


#Preview {
    ReadingScreen()
}





