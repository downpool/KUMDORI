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
        NavigationStack {
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
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: Maps(locations: "food")) {
                            ZStack {
                                Image("food")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                
                                Text("음식")
                                    .font(.system(size: 30))
                                    .background().opacity(0.5)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                            }
                        }
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    KitchenView()
}
