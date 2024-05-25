//
//  Background.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// MARK: Done

import SwiftUI

struct Background: View {
    @State var color: Color = .green
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Circle()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1200, height: 50)
                    .position(x: 150, y: 1100)
                    .foregroundColor(color)
                
            
            }
            
        }
        .background(Color(red: 0.92, green: 0.96, blue: 1))
        .ignoresSafeArea()
    }
}

#Preview {
    Background(color: .green)
}
