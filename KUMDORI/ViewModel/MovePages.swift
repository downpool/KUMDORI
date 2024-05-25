//
//  MovePages.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI

struct MovePages: View {
    // 뷰 배열 선언
    var pages: [AnyView] = [
        AnyView(GroundView()),
        AnyView(MainView()),
        AnyView(KitchenView()),
        AnyView(BedroomView())
    ]

    var body: some View {
        // 스와이프 가능한 탭 뷰
        TabView {
            ForEach(0..<pages.count, id: \.self) { index in
                pages[index]
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.gray.opacity(0.2))
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)) // 탭 뷰 스타일 설정
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MovePages(pages: [AnyView(GroundView()),
              AnyView(MainView()),
              AnyView(KitchenView()),
              AnyView(BedroomView())])
}
