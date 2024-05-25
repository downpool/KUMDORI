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

    @State private var region: MKCoordinateRegion = MKCoordinateRegion()
    @State var isShowMapView: Bool = false
    @State var tracking: MapUserTrackingMode = .follow
    
    var body: some View {
        if isShowMapView {
            Map()
        }
        
        Button {
            let manager = CLLocationManager()
            manager.desiredAccuracy = kCLLocationAccuracyBest
            manager.requestWhenInUseAuthorization()
            
            let latitude = manager.location?.coordinate.latitude
            let longitude = manager.location?.coordinate.longitude
            
            region = MKCoordinateRegion (
            center: CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
                ,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
            isShowMapView = true
        } label: {
            Text("now")
        }

    }
}

#Preview {
    FoodMapKit()
}
