//
//  icons.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI

struct icons: View {
    
    @State var foodPercent: CGFloat = 0.3
    @State var healthPercent: CGFloat = 0.1
    @State var playPercent: CGFloat = 0.5
    @State var energyPercent: CGFloat = 0.7
    @State var nowLevel: Int = 3
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("coins")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    ZStack {
                        Image("food")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(10)
                            .border(Color.black, width: 2)
                        
                        VStack {
                            Rectangle()
                                .frame(width: 45, height: 45 * foodPercent)
                                .background(Color.green)
                        }
                    }
                    Image("health")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .border(Color.black, width: 2)
                    Image("play")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .border(Color.black, width: 2)
                        .background(Color.blue)
                    Image("energy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                        .padding(10)
                        .border(Color.black, width: 2)
                        .background(Color.red)
                    Image(systemName: "star")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay(Text("\(nowLevel)"))
                        
                }.frame(height: 100)
                Spacer()
            }
        }
    }
}

#Preview {
    icons()
}
