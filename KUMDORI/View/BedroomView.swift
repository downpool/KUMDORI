//
//  BedroomView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct BedroomView: View {
    
    @State var lampOn: Bool = false
    var body: some View {
        NavigationStack{
            ZStack {
                Background(color: .skyblue)
                icons()
                VStack {
                    Spacer()
                    Text("침실")
                        .bold()
                        .font(Font.custom("Inter", size: 30).weight(.bold))
                        .foregroundColor(Color(red: 0.45, green: 0.60, blue: 0.74))
                    Spacer(minLength: 400)
                    Spacer()
                }
                VStack {
                    ZStack {
                        Image("bed")
                            .position(x: 200, y: 500)
                        Image("lamp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .position(x: 250, y: 300)
                            .frame(width: 300, height: 300)
                        
                    }
                    Charactor()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 250)
                        .position(x: 200)
                    
                    Spacer()
                }
                Color.black.opacity(lampOn ? 0.5 : 0).ignoresSafeArea()
                Button {
                    lampOn.toggle()
                    Kumdori.shared.increaseEnergy()
                } label: {
                    Color.clear.ignoresSafeArea()
                }
            }
            
        }
        
    }
}

#Preview {
    BedroomView()
}
