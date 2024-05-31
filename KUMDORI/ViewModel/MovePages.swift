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
        AnyView(OutsideView()),
        AnyView(MainView()),
        AnyView(KitchenView()),
        AnyView(BedroomView())
    ]

    var body: some View {
        // 스와이프 가능한 탭 뷰
        ZStack {
            Color(red: 0.92, green: 0.96, blue: 1).ignoresSafeArea()
            VStack {
                Spacer()
                TabView {
                    ForEach(0 ..< pages.count, id: \.self) { index in
                        pages[index]
                            .background(Color(red: 0.92, green: 0.96, blue: 1))
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    MovePages(pages: [AnyView(OutsideView()),
              AnyView(MainView()),
              AnyView(KitchenView()),
              AnyView(BedroomView())])
}
