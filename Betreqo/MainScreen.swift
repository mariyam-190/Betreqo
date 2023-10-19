//
//  MainScreen.swift
//  Betreqo
//
//  Created by mariyam yasin on 02/04/1445 AH.
//


import SwiftUI

struct MainScreen: View {
    var body: some View {
        
        VStack(spacing: 50){
            NavigationStack{
                Image("p").resizable().frame(width: 300, height: 300)
                Text("مرحبا بك !").font(.custom("ithra",size: 36)).foregroundColor(.DBlueColor).bold()
                
                Text(" مستعد للتعلم اليوم ؟").foregroundColor(.DBlueColor).bold().font(.custom("ithra",size: 48))
                
                Text(" أخبرني ماذا تريد أن تقرأ اليوم ؟").font(.custom("ithra",size: 24)).offset(x: 0, y: 110).foregroundColor(.gray)
                
                
                
                ZStack{
                    HStack{
                        Image("treesBackground").resizable().frame(width: 900, height: 400) } .position(x: 400, y: 690)
                    ScrollView(.horizontal) {
                        
                        HStack(spacing:40)
                        {
                            
                            
                            
                            //بداية قسم الحيوانات
                            ZStack(alignment:.bottom){
                                Image("animals")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                
                                Button{} label: {
                                    HStack{}.background(Color.black.frame(width: 180, height: 61)).offset(x:87, y: 8)
                                    NavigationLink(destination: IntrestScreen()) {
                                        Text(" الحيوانات ").bold().font(.custom("Ithra",size: 36)).background(Color.YellowColor.frame(width: 180, height: 61)).shadow(radius:10).foregroundColor(.black)
                                    }}}.padding(.bottom, 40)
                            
                            // بداية قسم النبات
                            ZStack(alignment:.bottom){
                                Image("plants")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                
                                Button{} label: {
                                    HStack{}.background(Color.gray.frame(width: 180, height: 61)).offset(x: 75, y: 8)
                                    
                                        Text("النباتات  ").bold().font(.custom("Ithra",size: 36)).background(Color.YellowColor.frame(width: 180, height: 61)).shadow(radius:10).foregroundColor(.black)
                                    }}.padding(.bottom, 40)
 
                            
                            
                            //بداية قسم الفضاء
                            
                            ZStack(alignment:.bottom){
                                Image("space")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                
                                Button{} label: {
                                    HStack{}.background(Color.gray.frame(width: 180, height: 61)).offset(x: 55, y: 8)
                                    
                                        Text("الفضاء").bold().font(.custom("Ithra",size: 36)).background(Color.YellowColor.frame(width: 180, height: 61)).shadow(radius:10).foregroundColor(.black)
                                    
                                }
                            }.padding(.bottom, 40)
                            
                        } .padding() //End of HSatck
                    }//End of scroll view
                    
                    
                }
            }
        }}
}

#Preview {
    MainScreen()
}

