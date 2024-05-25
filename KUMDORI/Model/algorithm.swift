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
    var playCount: Int
    
    static let shared = KumdoriGrow(foodPercent: 0, healthPercent: 0, playPercent: 0, energyPercent: 0)
    
    //싱글톤 사용
    private init(foodPercent: CGFloat, healthPercent: CGFloat, playPercent: CGFloat, energyPercent: CGFloat) {
        self.foodPercent = foodPercent
        self.healthPercent = healthPercent
        self.playPercent = playPercent
        self.energyPercent = energyPercent
        self.nowLevel = 1
        self.playCount = 0
    }
    
    func down() {
        self.foodPercent -= 0.15
        self.healthPercent -= 0.05
        self.energyPercent -= 0.1
    }
    func levelup() {
        if self.playCount >= 100 {
            self.nowLevel += 1
            self.playCount = 0
        }
    }
}


class TimerHolder {
    var timer: Timer?

    func startTimer(dori: KumdoriGrow) {
        let myObject = dori
        self.timer = Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(handleTimer(_:)), userInfo: myObject, repeats: true)
    }

    @objc func handleTimer(_ timer: Timer) {
        if let myObject = timer.userInfo as? KumdoriGrow {
            myObject.down()
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}

