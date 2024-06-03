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
    @State var locationManager = LocationManager()
//    @State var mapGuide = MapGuideView(source: CLLocationCoordinate2D(locationManager.currentLocation), destination: T##CLLocationCoordinate2D)
    @State private var onStat = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Background(color: .brown)
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
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: Maps(locations: "tour")) {
                            ZStack {
                                Image("map")
                                Text("여행지")
                                    .font(.system(size: 30))
                                    .background().opacity(0.5)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                            }
                        }
                        Spacer()
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
