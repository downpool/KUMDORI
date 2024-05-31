//
//  Status.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/31/24.
//

import SwiftUI

struct Status: View {
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.5).ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("food")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    
                    Spacer()
                    
                    Text(":")
                        .font(.system(size: 50))
                    
                    Spacer()
                    
                    Text("\(Int(Kumdori.shared.foodPercent * 100)) %")
                        .font(.system(size: 40))
                    
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("health")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    
                    Spacer()
                    
                    Text(":")
                        .font(.system(size: 50))
                    
                    Spacer()
                    
                    Text("\(Int(Kumdori.shared.healthPercent * 100)) %")
                        .font(.system(size: 40))
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("play")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    
                    Spacer()
                    
                    Text(":")
                        .font(.system(size: 50))
                    
                    Spacer()
                    
                    Text("\(Int(Kumdori.shared.playPercent * 100)) %")
                        .font(.system(size: 40))
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("energy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    
                    Spacer()
                    
                    Text(":")
                        .font(.system(size: 50))
                    
                    Spacer()
                    
                    Text("\(Int(Kumdori.shared.energyPercent * 100)) %")
                        .font(.system(size: 40))
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Status()
}
