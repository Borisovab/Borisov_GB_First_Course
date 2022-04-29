//
//  Car.swift
//  lesson 5_home work_tasks
//
//  Created by Александр Борисов on 29.04.2022.
//

import Foundation


//MARK: протокол Car

protocol Car {

    var yearOfIssue : YearOfIssue { get }
    var trunkVolume: Double { get }
    var filledTrunkSpace : Double { get }

    func engineAction(action: EngineCondition)
    func windowsAction(action: WindowsCondition)
}


extension Car {

    func engineAction(action: EngineCondition) {
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
