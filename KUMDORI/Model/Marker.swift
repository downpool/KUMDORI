//
//  Marker.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import Foundation
import CoreLocation
import MapKit

struct FoodLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct TourLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
 
let foodLocations: [FoodLocation] = [
    FoodLocation(name: "베스타뷔페 대전", coordinate: CLLocationCoordinate2D(latitude: 36.3669824, longitude: 127.3805577)),
    FoodLocation(name: "떡반집", coordinate: CLLocationCoordinate2D(latitude: 36.35228, longitude: 127.3749107)),
    FoodLocation(name: "성심당케익부띠끄", coordinate: CLLocationCoordinate2D(latitude: 36.3275403, longitude: 127.4268211)),
    FoodLocation(name: "옛터", coordinate: CLLocationCoordinate2D(latitude: 36.2147428, longitude: 127.4405483)),
    FoodLocation(name: "봉이호떡", coordinate: CLLocationCoordinate2D(latitude: 36.2001311, longitude: 127.4490255)),
    FoodLocation(name: "누오보나폴리", coordinate: CLLocationCoordinate2D(latitude: 36.3619529, longitude: 127.3530053)),
    FoodLocation(name: "귀빈돌솥밥", coordinate: CLLocationCoordinate2D(latitude: 36.3663744, longitude: 127.3805022)),
    FoodLocation(name: "오씨칼국수", coordinate: CLLocationCoordinate2D(latitude: 36.3419729, longitude: 127.4250897)),
    FoodLocation(name: "동천홍", coordinate: CLLocationCoordinate2D(latitude: 36.3610065, longitude: 127.3772912)),
    FoodLocation(name: "일당감자탕", coordinate: CLLocationCoordinate2D(latitude: 36.3564739, longitude: 127.3381428))
]



let tourLocations: [TourLocation] = [
    TourLocation(name: "한빛탑", coordinate: CLLocationCoordinate2D(latitude: 36.3765465, longitude: 127.388132)),
    TourLocation(name: "엑스포다리", coordinate: CLLocationCoordinate2D(latitude: 36.37271490000001, longitude: 127.3879907)),
    TourLocation(name: "용수골", coordinate: CLLocationCoordinate2D(latitude: 36.3384867, longitude: 127.4574456)),
    TourLocation(name: "스카이로드", coordinate: CLLocationCoordinate2D(latitude:36.3282357 , longitude: 127.4283342)),
    TourLocation(name: "뿌리공원", coordinate: CLLocationCoordinate2D(latitude:36.291277545077676, longitude: 127.3878003467211))
    ]
