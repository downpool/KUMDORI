//
//  KitchenView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct KitchenView: View {
    
    @State private var onStat = false
    
    var body: some View {
        ZStack {
            Background(color: .skyblue)
            Charactor()
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
                
                HStack {
                    Image("table")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .clipped()
                        
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    KitchenView()
}
