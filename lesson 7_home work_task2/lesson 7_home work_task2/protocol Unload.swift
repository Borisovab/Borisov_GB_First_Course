//
//  protocol Unload.swift
//  lesson 7_home work_task2
//
//  Created by Александр Борисов on 14.05.2022.
//

import Foundation


//MARK: протокол Unload с функцией для разгрузки атомобиля. Наследует протокол Car.

protocol Unload: Car {
    func unloadFromTrunkOfCar(bag: Double) -> Double
}
