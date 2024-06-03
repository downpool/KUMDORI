//
//  BedroomView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct BedroomView: View {
    
    @State private var lampOn: Bool = false
    @State private var onStat = false
    
    var body: some View {
        ZStack {
            Background(color: .skyblue)
            
            VStack {
                Spacer()
                Text("침실")
                    .bold()
                    .font(Font.custom("Inter", size: 30).weight(.bold))
                    .foregroundColor(Color(red: 0.45, green: 0.60, blue: 0.74))
                Spacer(minLength: 470)
                Spacer()
            }
            
            VStack {
                ZStack {
                    Image("bed")
                        .position(x: 200, y: 500)
                    
                    Charactor()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 250)
                }
            }
            
            Color.black.opacity(lampOn ? 0.5 : 0).ignoresSafeArea()
            
            VStack {
                Button {
                    onStat = true
                } label: {
                    icons()
                }
                .sheet(isPresented: $onStat, content: {
                    Status()
                })
                
                Spacer()
                
                Button {
                    lampOn.toggle()
                } label: {
                    Image("lamp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 95)
                }
                Text("Lamp")
                    .bold()
            }
        }
    }
}

#Preview {
    BedroomView()
}
