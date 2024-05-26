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
        NavigationStack {
            ZStack {
                TabView {
                    ForEach(0 ..< pages.count, id: \.self) { index in
                        pages[index]
                            .background(Color.gray.opacity(0.2))
                        
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)) // 탭 뷰 스타일 설정
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
