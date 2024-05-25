//
//  KitchenView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct KitchenView: View {
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
    KitchenView()
}
