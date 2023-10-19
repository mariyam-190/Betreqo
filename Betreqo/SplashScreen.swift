//
//  SplashScreen.swift
//  Betreqo
//
//  Created by mariyam yasin on 02/04/1445 AH.
//



import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
          ContentView()
        } else {
            
            VStack{
                
                    Color.LBlueColor
                        .edgesIgnoringSafeArea(.all)
      
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 0.9)){
                        self.size = 0.5
                        self.opacity = 1
                    }
                }
            }
            
            
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
    SplashScreen()
}
