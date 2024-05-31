//
//  MainView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// TODO: 아이콘이 잘 안눌림.

import SwiftUI

struct MainView: View {
    
    @State private var onStat = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Background(color: .green).opacity(0.8)
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
                        Spacer()
                        NavigationLink(destination: Maps(locations: "food")) {
                            ZStack {
                                Image("map")
                                Text("음식")
                                    .font(.system(size: 30))
                                    .background().opacity(0.5)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                            }
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: Maps(locations: "tour")) {
                            ZStack {
                                Image("map")
                                Text("관광")
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
    MainView()
}
