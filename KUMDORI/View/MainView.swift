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
            Background()
            Charactor()
            icons()
            VStack {
                
                Spacer()
                
                
                HStack {
                    NavigationLink(destination: Maps()) {
                        Image("map")
                    }
                    
                }
            }
                
               
            }
        }
        
    }
}

#Preview {
    MainView()
}
