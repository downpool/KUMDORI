//
//  CountMoving.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/26/24.
//

import CoreMotion
import Combine

final class CoreMotionService: ObservableObject {
    static let shared = CoreMotionService()
    
    private var pedoMeter = CMPedometer()
    @Published var steps: Int = 0  // 발걸음 수를 저장하는 변수
    
    private init() {
        // 객체 초기화 시 타이머 시작
        Timer.scheduledTimer(timeInterval: 1.0,
                             target: self,
                             selector: #selector(checkSteps),
                             userInfo: nil,
                             repeats: true)
    }
    
    @objc private func checkSteps() {
        let nowDate = Date()
        guard let todayStartDate = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: nowDate) else {
            return
        }
        
        pedoMeter.queryPedometerData(from: todayStartDate, to: nowDate) { data, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("CoreMotionService Error: \(error.localizedDescription)")
                    return
                }
                if let steps = data?.numberOfSteps.intValue {
                    self.steps = steps
                }
            }
        }
    }
}
