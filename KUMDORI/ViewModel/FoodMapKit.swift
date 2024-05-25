//
//  FoodMapKit.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI
import MapKit
import CoreLocation

struct FoodMapKit: View {
    @StateObject private var viewModel = LocationViewModel()
    @State var userTracking: MapCameraPosition = .userLocation(followsHeading: true, fallback: MapCameraPosition)
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true, userTrackingMode: $userTracking)
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
            .edgesIgnoringSafeArea(.all)
    }
}

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.052235, longitude: -118.243683), latitudinalMeters: 1000, longitudinalMeters: 1000)
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Location services are not enabled")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .authorizedWhenInUse:
            manager.startUpdatingLocation()
        case .authorizedAlways:
            manager.startUpdatingLocation()
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else { return }
        region = MKCoordinateModal(center: latestLocation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}
#Preview {
    FoodMapKit()
}
