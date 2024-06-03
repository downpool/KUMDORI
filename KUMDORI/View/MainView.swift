//
//  MainView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// TODO: 아이콘이 잘 안눌림.

import SwiftUI

struct MainView: View {
    
    @State private var onStat = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Background(color: .green).opacity(0.8)
                Charactor() 
                VStack {
                    Button {
                        onStat = true
                    } label: {
                        icons()
                    }
                    .sheet(isPresented: $onStat, content: {
                        Status()
                    })

                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("오늘 갔던 곳")
                    }

                }
            }
        }
    }
}

#Preview {
    MainView()
}
