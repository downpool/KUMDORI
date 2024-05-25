//
//  LoadingView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack() {
            Text("로딩중...")
                .font(Font.custom("Inter", size: 30).weight(.bold))
                .foregroundColor(Color(red: 0.45, green: 0.60, blue: 0.74))
                .offset(x: 18.50, y: -40)
        }
        .frame(width: 393, height: 852)
        .background(Color(red: 0.92, green: 0.96, blue: 1))
    }
}

#Preview {
    LoadingView()
}
