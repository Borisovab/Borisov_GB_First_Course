//
//  TrunkCar.swift
//  lesson 5_home work_tasks
//
//  Created by Александр Борисов on 29.04.2022.
//

import Foundation


class TrunkCar: Car {

    enum TruckTM : String {
        case Scania = "Scania"
        case Volvo = "Volvo"
        case Skoda = "Skoda"
        case Suzuki = "Suzuki"
        case JCB = "JCB"
        case Caravan = "Caravan"
        case Toyota = "Toyota"
        case MAN = "MAN"
        case Volkswagen = "Volkswagen"
    }

    var yearOfIssue : YearOfIssue
    var trunkVolume: Double
    var filledTrunkSpace : Double

    var truckTradeMark : TruckTM

    init(yearOfIssue : YearOfIssue, trunkVolume: Double, filledTrunkSpace : Double, truckTradeMark : TruckTM) {
        self.yearOfIssue = yearOfIssue
        self.trunkVolume = trunkVolume
        self.filledTrunkSpace = filledTrunkSpace
        self.truckTradeMark = truckTradeMark
    }
}

//MARK: добавляем в класс TrunkCar функцию для погрузки автомобиля

extension TrunkCar: Load {

    func loadTrunkOfCar(bag: Double) -> Double {
        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в кузове для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы загрузили в кузов груз объемом \(bag) литров. В кузове осталось \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }
}

//MARK: добавляем в класс TrunkCar функцию для разгрузки автомобиля

extension TrunkCar: Unload {

    func unloadFromTrunkOfCar(bag: Double) -> Double {
        if bag > filledTrunkSpace {
            print("В кузове нет такого объема для выгрузки")
        }else{
            filledTrunkSpace = filledTrunkSpace - bag
            print("Вы выгрузили из кузова груз объемом \(bag) литров. В кузове стало \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }
}

//MARK: добавляем в класс TrunkCar возможность выводить в консоль информацию о созданном автомобиле

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return ("\n 🚚 Грузовой автомобиль TM: \(truckTradeMark.rawValue), год выпуска \(yearOfIssue.rawValue), объем кузова \(trunkVolume) литров, в настоящее время в кузове находится груз объемом \(filledTrunkSpace) литров.\n")
    }
}
