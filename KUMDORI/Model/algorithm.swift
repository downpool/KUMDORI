//
//  algorithm.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import Foundation

class Kumdori {
    var foodPercent: CGFloat
    var healthPercent: CGFloat
    var playPercent: CGFloat
    var energyPercent: CGFloat
    var nowLevel: Int
    var playCount: Int
    var characterSize: CGFloat
    var isAdult: Bool

    static let shared = Kumdori(foodPercent: 0.5, healthPercent: 0.5, playPercent: 0.5, energyPercent: 0.5)

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
        
        // Timer 설정
        Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(decreaseStats), userInfo: nil, repeats: true)
        
        // Timer 설정 - 불 꺼졌을 때 에너지 증가
        Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(increaseEnergy), userInfo: nil, repeats: true)
    }

    
    
    // 수치 감소
    @objc func decreaseStats() {
        down()
    }
    
    // 침실 불 끄면 에너지 한시간에 0.225씩 증가
    @objc func increaseEnergy() {
        // TODO
        // 불이 꺼졌을 때만 에너지를 증가시키는 조건 추가 필요
        // 현재 항상 증가한다고 가정
        Kumdori.shared.energyPercent = min(Kumdori.shared.energyPercent + 0.225, 1.0)
    }

    // 시간당 수치 감소
    func down() {
        Kumdori.shared.foodPercent = max(Kumdori.shared.foodPercent - 0.15, 0.1)
        Kumdori.shared.healthPercent = max(Kumdori.shared.healthPercent - 0.05, 0.1)
        Kumdori.shared.energyPercent = max(Kumdori.shared.energyPercent - 0.1, 0.1)
    }

    // 음식 먹으면 0.5씩 수치 증가
    func eatFood() {
        Kumdori.shared.foodPercent = min(Kumdori.shared.foodPercent + 0.5, 1.0)
    }

    // 만보기 기능으로 stpes 100마다 0.1 증가
    func walk(steps: Int) {
        // TODO
        // 만보기 기능
        let healthIncrease = CGFloat(steps / 100) * 0.1
        Kumdori.shared.healthPercent = min(Kumdori.shared.healthPercent + healthIncrease, 1.0)
    }

    // TODO
    // 장소에 가면 위치로 확인해서 수치 0.5씩 증가
    func visit() {
        Kumdori.shared.playPercent += 0.5
        if Kumdori.shared.playPercent >= 1.0 {
            Kumdori.shared.playPercent = 0
            levelUp()
        }
    }

    // 10마다 크기 증가, 20 이상부터는 어른 캐릭터
    func levelUp() {
        Kumdori.shared.nowLevel += 1
        if Kumdori.shared.nowLevel % 10 == 0 {
            Kumdori.shared.characterSize += 0.1 // 캐릭터 크기 증가
        }
        if Kumdori.shared.nowLevel >= 20 {
            Kumdori.shared.isAdult = true // 어른 모습으로 변경
        }
    }
}
