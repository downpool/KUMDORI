//
//  OutsideView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI
import Combine

struct OutsideView: View {
    
    @ObservedObject var coreMotionService = CoreMotionService.shared
    
    var body: some View {
        NavigationStack{
            ZStack {
                Background(color: .brown)
                Charactor()
                icons()
                VStack {
                    Spacer()
                    
                    Text("운동장")
                        .bold()
                        .font(Font.custom("Inter", size: 30).weight(.bold))
                        .foregroundColor(Color(red: 0.45, green: 0.60, blue: 0.74))
                    Spacer(minLength: 450)
                    
                    Text("당신이 걸은 수는 :  \(coreMotionService.steps)")
                        .font(.system(size: 30))
                        .onChange(of: coreMotionService.steps) { newSteps in
                            Kumdori.shared.walk(steps: newSteps)
                        }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    OutsideView()
}
