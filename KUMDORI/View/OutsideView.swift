//
//  OutsideView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct OutsideView: View {
    var body: some View {
        NavigationStack{
        ZStack {
            Background(color: .brown)
            Charactor()
            icons()
            VStack {
                Spacer()
                
                Text("운동장")
                    .bold()
                    .font(Font.custom("Inter", size: 30).weight(.bold))
                    .foregroundColor(Color(red: 0.45, green: 0.60, blue: 0.74))
                Spacer(minLength: 450)
                    
                
                
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
    OutsideView()
}
