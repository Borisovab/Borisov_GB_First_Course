//
//  protocol Car.swift
//  lesson 7_home work_task2
//
//  Created by Александр Борисов on 14.05.2022.
//

import Foundation


protocol Car {

    var yearOfIssue : YearOfIssue { get }
    var trunkVolume: Double { get }
    var filledTrunkSpace : Double { get }

    var engineOperatingCondition: EngineOperatingCondition { get }
    var fuel : Int { get }

    func engineAction(action: EngineCondition) throws
    func windowsAction(action: WindowsCondition)
}


extension Car {

    func engineAction(action: EngineCondition) throws {
        guard self.engineOperatingCondition == .working else { throw CarsAbilityToWork.engineDysfunction }
        guard self.fuel > 0 else { throw CarsAbilityToWork.noFuel }

        switch action {
        case .on: print("Запустить двигатель")
        case .off: print("Заглушить двигатель")
        }
    }

    func windowsAction(action: WindowsCondition) {
        switch action {
        case .open: print("Открыть окна")
        case .close: print("Закрыть окна")
        }
    }
}

