//
//  icons.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// MARK: Done

import SwiftUI

struct icons: View {
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image("coins")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 55)
                    ZStack(alignment: .bottom) {
                        
                        Rectangle()
                            .frame(width: 55, height: 58 * Kumdori.shared.foodPercent, alignment: .bottom)
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
                            .frame(width: 55, height: 58 * Kumdori.shared.healthPercent, alignment: .bottom)
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
                            .frame(width: 55, height: 58 * Kumdori.shared.playPercent, alignment: .bottom)
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
                            .frame(width: 55, height: 58 * Kumdori.shared.energyPercent, alignment: .bottom)
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
                        Text("\(Kumdori.shared.nowLevel)")
                            .font(.system(size: 50))
                        
                    }
                    
                    Spacer()
                    
                }.frame(height: 100)
                Spacer()
            }
        }
    }
}
