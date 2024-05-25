//
//  BedroomView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct BedroomView: View {
    
    @State var lampOn: Bool = true
    var body: some View {
        NavigationStack{
        ZStack {
            Background(color: .skyblue)
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
    BedroomView()
}
