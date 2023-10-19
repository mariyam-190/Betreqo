//
//  ColorPickerView.swift
//  pkit
//
//  Created by mariyam yasin on 22/03/1445 AH.
//

import SwiftUI

struct ColorPickerView: View {
    let colors = [Color.red, Color.orange, Color.green, Color.blue, Color.purple]
    
    static let bottomSheetBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.26), Color("Background 2").opacity(0.26)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack{
            ForEach(colors, id:\.self) { color in
                Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill
                      :Constants.Icons.circleFill)
                .foregroundColor(color)
                .font(.system(size:16))
                .clipShape(Circle())
                .onTapGesture{
                    selectedColor = color
                }
            }
        }
    }
}


struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.blue))
    }
}
