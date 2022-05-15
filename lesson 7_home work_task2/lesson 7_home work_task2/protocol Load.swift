//
//  protocol Load.swift
//  lesson 7_home work_task2
//
//  Created by Александр Борисов on 14.05.2022.
//

import Foundation


//MARK: протокол Load с функцией для погрузки атомобиля. Наследует протокол Car.

protocol Load: Car {
    func loadTrunkOfCar(bag: Double) -> Double
}
