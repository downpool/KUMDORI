//
//  MainView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Background()
            Charactor()
            icons()
        }
    }
}

#Preview {
    MainView()
}