//
//  algorithm.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import Foundation

class KumdoriGrow {
    var foodPercent: CGFloat
    var healthPercent: CGFloat
    var playPercent: CGFloat
    var energyPercent: CGFloat
    var nowLevel: Int
    
    init(foodPercent: CGFloat, playPercent: CGFloat) {
        self.foodPercent = foodPercent
        self.healthPercent = 0
        self.playPercent = playPercent
        self.energyPercent = 1
        self.nowLevel = 1
    }
    
    
}
