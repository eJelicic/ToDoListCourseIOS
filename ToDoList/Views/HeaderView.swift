//
//  HeaderView.swift
//  ToDoList
//
//  Created by Eugen Jelicic on 07.01.2024..
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height:300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView(title: "Register",
               subtitle: "Start organizing todos",
               angle: 15,
               background: .blue)
}
