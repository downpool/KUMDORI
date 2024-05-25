//
//  algorithm.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import Foundation

class Kumdori: NSObject {
    var foodPercent: CGFloat
    var healthPercent: CGFloat
    var playPercent: CGFloat
    var energyPercent: CGFloat
    var nowLevel: Int
    var playCount: Int
    var characterSize: CGFloat
    var isAdult: Bool
    
    static let shared = Kumdori(foodPercent: 0, healthPercent: 0, playPercent: 0, energyPercent: 0)
    
    //싱글톤 사용
    private init(foodPercent: CGFloat, healthPercent: CGFloat, playPercent: CGFloat, energyPercent: CGFloat) {
        self.foodPercent = foodPercent
        self.healthPercent = healthPercent
        self.playPercent = playPercent
        self.energyPercent = energyPercent
        self.nowLevel = 1
        self.playCount = 0
        self.characterSize = 1.0
        self.isAdult = false
    }
        // Timer 설정
//    func Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(decreaseStats()), userInfo: nil, repeats: true)
        
        // Timer 설정 - 불 꺼졌을 때 에너지 증가
//    Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(increaseEnergy()), userInfo: nil, repeats: true)
    
    
    
    
    func decreaseStats() {
        down()
    }
    
    func increaseEnergy() {
        // 불이 꺼졌을 때만 에너지를 증가시키는 조건 추가 필요
        // 현재 항상 증가한다고 가정
        self.energyPercent = min(self.energyPercent + 0.225, 1.0)
    }
    
    func down() {
        self.foodPercent = max(self.foodPercent - 0.15, 0.1)
        self.healthPercent = max(self.healthPercent - 0.05, 0.1)
        self.energyPercent = max(self.energyPercent - 0.1, 0.1)
    }
    
    func eatFood() {
        self.foodPercent = min(self.foodPercent + 0.5, 1.0)
    }
    
    func walk(steps: Int) {
        let healthIncrease = CGFloat(steps / 100) * 0.1
        self.healthPercent = min(self.healthPercent + healthIncrease, 1.0)
    }
    
    func takePhoto() {
        self.playPercent += 0.5
        if self.playPercent >= 1.0 {
            self.playPercent = 0
            Kumdori.shared.levelUp()
        }
    }
    
    func levelUp() {
        self.nowLevel += 1
        if self.nowLevel % 10 == 0 {
            self.characterSize += 0.1 // 캐릭터 크기 증가
        }
        if self.nowLevel >= 20 {
            self.isAdult = true // 어른 모습으로 변경
        }
    }
    
    func play() {
        self.playCount += 1
        if self.playCount >= 100 {
            self.nowLevel += 1
            self.playCount = 0
            levelUp()
        }
    }
}
