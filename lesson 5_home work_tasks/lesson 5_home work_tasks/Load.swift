//
//  Load.swift
//  lesson 5_home work_tasks
//
//  Created by Александр Борисов on 29.04.2022.
//

import Foundation

//MARK: протокол Load с функцией для погрузки атомобиля. Наследует протокол Car.

protocol Load: Car {
    func loadTrunkOfCar(bag: Double) -> Double
}
