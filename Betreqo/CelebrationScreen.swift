//
//  CelebrationScreen.swift
//  Betreqo
//
//  Created by mariyam yasin on 02/04/1445 AH.
//


import SwiftUI
import ConfettiSwiftUI

struct CelebrationScreen: View {
    @State var counter:Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                //    Color.color3
                //    .ignoresSafeArea()
                Image("Image1")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                    .blur(radius: 9.0)
                RoundedRectangle(cornerRadius: 29)
                    .fill(Color.bgColor)
                    .stroke(.black, lineWidth: 2.5)
                    .frame(width: 601.0, height: 600.0)
                
                
                VStack (spacing:20) {
                    
                    Text("أحسنت!")
                        .font(.custom( "Ithra", size: 90))
                        .fontWeight(.bold).foregroundColor(Color.DBlueColor)  .font(.system(size:60))
                    
                    
                        .multilineTextAlignment(.center)
                        .padding(.top, 300.0)
                        .onAppear(){counter += 1}
                    ConfettiCannon(counter: $counter)
                    
                    Text("أنت تحرز تقدمًا كبيراً، واصل المسير 👏🏻")
                        .font(.custom( "Ithra", size: 33))
                        .foregroundColor(Color.BlueColor)
                        .fontWeight(.bold)
                        .padding(.top,-40)
                    
                }
                .padding(.bottom, 500.0)
                Button {
                } label: {
                    
                    HStack (spacing: 20) {
                        
                        Image(systemName:"arrowshape.backward.circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                        
                        
                        
                        NavigationLink(destination: IntrestScreen()) {
                            VStack{
                                Text("رجوع")
                                    .font(.custom( "Ithra", size: 40))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(20)
                                
                            }
                        }
                    }
                    //
                }
                
                .frame(width: 200.0, height: 80.0)
                .background(Color.YellowColor)
                .foregroundColor(.DBlueColor)
                .cornerRadius(40)
                .shadow(radius: 10)
                .padding(.top, 330.0)
                
                
                
            }.multilineTextAlignment(.center)
            
        }
        
    }
}

#Preview {
    CelebrationScreen()
}
