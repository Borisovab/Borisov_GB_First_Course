//
//  Unload.swift
//  lesson 5_home work_tasks
//
//  Created by Александр Борисов on 29.04.2022.
//

import Foundation

//MARK: протокол Unload с функцией для разгрузки атомобиля. Наследует протокол Car.

protocol Unload: Car {
    func unloadFromTrunkOfCar(bag: Double) -> Double
}
