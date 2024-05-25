//
//  Chractor.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI

struct Charactor: View {
    var body: some View {
        Image("Kumdori")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400)
        
    }
}

#Preview {
    Charactor()
}
