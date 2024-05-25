//
//  MapViewModel.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import Combine


class MapViewModel: ObservableObject {
    @Published var landmarks: [Landmark] = []

    func addLandmark(name: String, coordinate: CLLocationCoordinate2D) {
        let landmark = Landmark(name: name, coordinate: coordinate)
        landmarks.append(landmark)
    }
}
