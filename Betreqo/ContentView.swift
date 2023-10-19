//
//  ContentView.swift
//  Betreqo
//
//  Created by mariyam yasin on 02/04/1445 AH.
//

import SwiftUI


struct ContentView: View {
    @State private var moveTextUp = false
    @State private var isActive = false
    var body: some View {
        if isActive {
          MainScreen()
        } else {
            
            ZStack {
                Color.LBlueColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("ice")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 1000, height: 400)
                        .padding(.top, 1000)
                }
                
                VStack {
                    Image("pe")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 200, height: 200)
                        .padding(.top, 1000)
                }
                
                VStack {
                    Text("هيّــا بنـا نتعــلم مــع")
                        .font(.custom("Ithra", size: 65))
                        .bold()
                        .foregroundColor(Color.DBlueColor)
                        .frame(alignment: .center)
                        .kerning(3)
                        .offset(y: moveTextUp ? -20 : 0) // Move text up by 20 points
                        .animation(
                            Animation.easeInOut(duration: 1) // Animation duration and timing curve
                                .repeatForever(autoreverses: true) // Repeats animation indefinitely
                        )
                    
                    Text("بــطريــقو !")
                        .font(.custom("Ithra", size: 65))
                        .bold()
                        .foregroundColor(Color.YellowColor)
                        .frame(alignment: .center)
                        .kerning(3)
                        .offset(y: moveTextUp ? 0 : 20) // Move text down by 20 points
                        .animation(
                            Animation.easeInOut(duration: 1)
                                .repeatForever(autoreverses: true)
                        )
                }
            }
            
//            .onAppear {
//                // Start the animation when the view appears
//                self.moveTextUp.toggle()
//            }
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }

        }
    }
    
}






#Preview {
ContentView()
    
}
