//
//  Marker.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import Foundation
import CoreLocation
import MapKit


struct Location: Identifiable {
    let id = UUID()
    let type: String
    let name: String
    let coordinate: CLLocationCoordinate2D
}
 
let locationss: [Location] = [
    Location(type: "food", name: "베스타뷔페 대전", coordinate: CLLocationCoordinate2D(latitude: 36.3669824, longitude: 127.3805577)),
    Location(type: "food", name: "떡반집", coordinate: CLLocationCoordinate2D(latitude: 36.35228, longitude: 127.3749107)),
    Location(type: "food", name: "성심당케익부띠끄", coordinate: CLLocationCoordinate2D(latitude: 36.3275403, longitude: 127.4268211)),
    Location(type: "food", name: "옛터", coordinate: CLLocationCoordinate2D(latitude: 36.2147428, longitude: 127.4405483)),
    Location(type: "food", name: "봉이호떡", coordinate: CLLocationCoordinate2D(latitude: 36.2001311, longitude: 127.4490255)),
    Location(type: "food", name: "누오보나폴리", coordinate: CLLocationCoordinate2D(latitude: 36.3619529, longitude: 127.3530053)),
    Location(type: "food", name: "귀빈돌솥밥", coordinate: CLLocationCoordinate2D(latitude: 36.3663744, longitude: 127.3805022)),
    Location(type: "food", name: "오씨칼국수", coordinate: CLLocationCoordinate2D(latitude: 36.3419729, longitude: 127.4250897)),
    Location(type: "food", name: "동천홍", coordinate: CLLocationCoordinate2D(latitude: 36.3610065, longitude: 127.3772912)),
    Location(type: "food", name: "일당감자탕", coordinate: CLLocationCoordinate2D(latitude: 36.3564739, longitude: 127.3381428)),
    Location(type: "tour", name: "한빛탑", coordinate: CLLocationCoordinate2D(latitude: 36.3765465, longitude: 127.388132)),
    Location(type: "tour",name: "엑스포다리", coordinate: CLLocationCoordinate2D(latitude: 36.37271490000001, longitude: 127.3879907)),
    Location(type: "tour",name: "용수골", coordinate: CLLocationCoordinate2D(latitude: 36.3384867, longitude: 127.4574456)),
    Location(type: "tour",name: "스카이로드", coordinate: CLLocationCoordinate2D(latitude:36.3282357 , longitude: 127.4283342)),
    Location(type: "tour",name: "뿌리공원", coordinate: CLLocationCoordinate2D(latitude:36.291277545077676, longitude: 127.3878003467211))
    ]
