//
//  LoadingView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(red: 0.92, green: 0.96, blue: 1).ignoresSafeArea()
            Text("로딩중...")
                .font(Font.custom("Inter", size: 30).weight(.bold))
                .foregroundColor(Color(red: 0.45, green: 0.60, blue: 0.74))
                
        }
        
    }
}

#Preview {
    LoadingView()
}
