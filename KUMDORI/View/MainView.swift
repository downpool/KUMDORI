//
//  MainView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// TODO: Map, 

import SwiftUI

struct MainView: View {
   
    var body: some View {
        NavigationStack{
        ZStack {
            Background(color: .green).opacity(0.8)
            Charactor()
            icons()
            VStack {
                
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
