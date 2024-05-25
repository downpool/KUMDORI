//
//  Background.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
            VStack {
                // TODO: 상단 이모티콘들
                Spacer()
                Image("gress")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
            }
            
        }
        .background(Color(red: 0.92, green: 0.96, blue: 1))
        .ignoresSafeArea()
    }
}

#Preview {
    Background()
}
