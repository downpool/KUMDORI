//
//  icons.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// MARK: Done

import SwiftUI

struct icons: View {
    @ObservedObject var kumdori = Kumdori.shared
    // MARK: 페이지를 넘어갈때 값이 일관적이지 않음.
    var body: some View {

        VStack {
            HStack {
                Spacer()
                Image("coins")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55)
                ZStack(alignment: .bottom) {
                    
                    Rectangle()
                        .frame(width: 55, height: 58 * kumdori.foodPercent, alignment: .bottom)
                        .foregroundStyle(.green)
                    
                    Image("food")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .padding(10)
                        .border(Color.black, width: 2)
                }
                
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .frame(width: 55, height: 58 * kumdori.healthPercent, alignment: .bottom)
                        .foregroundStyle(.green)
                    
                    Image("health")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .padding(10)
                        .border(Color.black, width: 2)
                }
                
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .frame(width: 55, height: 58 * kumdori.playPercent, alignment: .bottom)
                        .foregroundStyle(.green)
                    
                    Image("play")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .padding(10)
                        .border(Color.black, width: 2)
                }
                
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .frame(width: 55, height: 58 * kumdori.energyPercent, alignment: .bottom)
                        .foregroundStyle(.green)
                    
                    Image("energy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .padding(10)
                        .border(Color.black, width: 2)
                }
                ZStack {
                    Image(systemName: "star")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .bold()
                        .frame(width: 40)
                        .padding(3)
                        .foregroundColor(.yellow)
                    Text("\(kumdori.nowLevel)")
                        .font(.system(size: 50))
                }
                
                Spacer()
            }.frame(height: 80)
        }
    }
}


#Preview {
    icons()
}
