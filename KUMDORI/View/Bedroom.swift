//
//  Bedroom.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct Bedroom: View {
    @State var Kumdorie = KumdoriGrow(foodPercent: 0.4, healthPercent: 0, playPercent: 0, energyPercent: 0)
    
    var body: some View {
        NavigationStack{
        ZStack {
            Background(color: .blue)
            Charactor()
            icons(Kumdories: $Kumdorie)
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
