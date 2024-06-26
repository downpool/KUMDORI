//
//  Chractor.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//
// MARK: Done

import SwiftUI

struct Charactor: View {
    
    var body: some View {
        
        if Kumdori.shared.isAdult {
            Image("Kumdori")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
        } else {
            Image("babyKumdori")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
        }
    }
}

#Preview {
    Charactor()
}
