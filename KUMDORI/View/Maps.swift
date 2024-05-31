//
//  Maps.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import SwiftUI
import MapKit
import CoreLocation

// MARK: 기본 위도 경도가 0으로 설정되어 있음. -수정 완-
struct Maps: View {
    @StateObject var locationManager = LocationManager()
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 36.35001, longitude: 127.38489),
        latitudinalMeters: 1000,  // 확대/축소 범위 조정
        longitudinalMeters: 1000
    )
    @State var locations: String = ""
    
    var body: some View {
        Map(coordinateRegion: $region,
            interactionModes: [.all],  // 모든 상호작용 허용
            showsUserLocation: true,  // 사용자 위치 표시
            annotationItems: locationss.filter { $0.type == locations }) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    VStack {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                            .imageScale(.large)
                        Text(location.name)
                            .font(.caption)
                            .fixedSize()
                    }
                }
        }
        .ignoresSafeArea()
        .onAppear {
            locationManager.startTracking()
            // 초기 지도 위치를 설정하거나 사용자의 현재 위치를 기반으로 설정
            if let initialLocation = locationManager.currentLocation {
                updateRegion(to: initialLocation)
            }
        }
//        .onChange(of: locationManager.currentLocation) { newLocation in
//            updateRegion(to: newLocation)
//        }
    }

    private func updateRegion(to location: CLLocation?) {
        guard let coordinate = location?.coordinate else { return }
        region = MKCoordinateRegion(
            center: coordinate,
            latitudinalMeters: 5000,  // 확대/축소 범위 조정
            longitudinalMeters: 5000
        )
    }
}

#Preview {
    Maps()
}
