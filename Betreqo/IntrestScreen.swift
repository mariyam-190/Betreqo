//
//  IntrestScreen.swift
//  Betreqo
//
//  Created by mariyam yasin on 02/04/1445 AH.
//


import SwiftUI

struct IntrestScreen: View {
    @State private var showPopup = false
    var body: some View {
        NavigationStack {
            VStack {
                ZStack  {
                    VStack {
                        Text("الحيوانـات")
                            .font(.custom("Ithra", size:50))
                            .font(.title).foregroundColor(.DBlueColor)
                           .frame(alignment:.center).kerning(10)
                            .padding(.top, 100)
                        Spacer()
                        Text("أخبرنـي عن مـاذا تريد أن تـقرأ الـيوم؟")                    .font(.custom("Ithra", size:25))
                            .font(.subheadline)
                          .frame(alignment:.center).foregroundColor(.gray)
                   
                        VStack{
                            Image("ice")
                                .resizable()
                                .frame(width: 900, height: 300)
                                .padding(.top, 20)
                            .position(x: 400, y:900)}
                    }
                    VStack {
                        HStack(spacing: 80) {
                            ZStack(alignment: .bottom) {
                                Image("the")
                                    .padding(.bottom,20)
                                Button {
                                    // Handle button action
                                } label: {
                                    NavigationLink(destination: ReadingScreen()) {
                                        Text("الثعـلب")
                                            .font(.custom("Ithra", size:36.0))
                                            .bold()
                                            .background(Color.YellowColor.frame(width: 180, height: 61))
                                         
                                            .foregroundColor(.black)
                                           
                                            
                                    }
                                }
                            }
                            ZStack(alignment: .bottom){
                                Image("bat")
                                    .padding(.bottom,20)
                                    .frame(width: 300, height: 300)
                                Button(action: {
                                                              showPopup.toggle()
                                                          }) {
                                                              Text("الخفـاش")
                                                                  .font(.custom("Ithra", size: 36.0))
                                                                  .bold()
                                                                  .background(Color.gray.frame(width: 180, height: 61))
                                                                
                                                                  .foregroundColor(.black)
                                                          }
                                                          .alert(isPresented: $showPopup) {
                                                              Alert(
                                                                  title: Text("اكمل القـصة السابـقة للدخول"),
                                                                  dismissButton: .default(Text("موافق"))
                                                              )
                                                          }
                            }
                        }
                        HStack {
                            ZStack(alignment: .bottom) {
                                Image("sq")
                                    .frame(width: 300, height: 300)
                                Button(action: {
                                                           showPopup.toggle()
                                                       }) {
                                Text("السنجاب")
                                    .bold()
                                    .font(.custom("Ithra", size:36.0))
                                    .background(Color.gray.frame(width: 180, height: 61))
                                    
                                    .foregroundColor(.black)
                                                       }
                                                                                  .alert(isPresented: $showPopup) {
                                                                                      Alert(
                                                                                          title: Text("اكمل القـصة السابـقة للدخول"),
                                                                                          dismissButton: .default(Text("موافق"))
                                                                                      )
                                                                                  }
                            }
                            .offset(x: -180, y: 40)
                        }
                    }
                }
            }
        }
    }

}
#Preview {
    IntrestScreen()
}
