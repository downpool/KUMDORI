//
//  LocationManager.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import Foundation
import CoreLocation
import MapKit
import SwiftUI

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    static let shared = LocationManager()
    private let locationManager = CLLocationManager()
    @Published var currentLocation: CLLocation?
    @Published var locations: [CLLocation] = []
    @Published var authorizationStatus: CLAuthorizationStatus = .notDetermined
        
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func startTracking() {
        locationManager.startUpdatingLocation()
    }

    func stopTracking() {
        locationManager.stopUpdatingLocation()
    }

    func currentCoordinate() -> CLLocationCoordinate2D? {
        return currentLocation?.coordinate
    }

    func distanceTo(location: CLLocation) -> Double {
        return currentLocation?.distance(from: location) ?? 0.0
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let newLocation = locations.last else { return }
        self.currentLocation = newLocation
        self.locations.append(newLocation)
        NotificationCenter.default.post(name: .didReceiveLocationUpdate, object: self, userInfo: ["location": newLocation])
    }

    internal func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to find user's location: \(error.localizedDescription)")
    }

    func nearbyPointsOfInterest(completion: @escaping ([MKMapItem]?, Error?) -> Void) {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "restaurant"
        if let location = currentLocation {
            request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
        }
        let search = MKLocalSearch(request: request)
        search.start { response, error in
            completion(response?.mapItems, error)
        }
    }

    func trackRoute() -> [CLLocationCoordinate2D] {
        return locations.map { $0.coordinate }
    }
    
    private func checkLocationAuthorizationStatus() {
            switch locationManager.authorizationStatus {
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted, .denied:
                print("Location access is restricted or denied.")
            case .authorizedAlways, .authorizedWhenInUse:
                locationManager.startUpdatingLocation()
            @unknown default:
                fatalError("Unhandled authorization status")
            }
        }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        authorizationStatus = status
        checkLocationAuthorizationStatus()
    }

}

extension Notification.Name {
    static let didReceiveLocationUpdate = Notification.Name("didReceiveLocationUpdate")
}
