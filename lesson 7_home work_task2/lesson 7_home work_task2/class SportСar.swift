//
//  class SportСar.swift
//  lesson 7_home work_task2
//
//  Created by Александр Борисов on 14.05.2022.
//

import Foundation


class SportСar: Car {

    enum SportCarTM : String {
        case Toyota = "Toyota"
        case AudiSport = "Audi Sport"
        case Maserati = "Maserati"
        case McLaren = "McLaren"
        case Jaguar = "Jaguar"
        case ChevroletCamaro = "Chevrolet Camaro"
        case FordGT = "Ford GT"
        case Ferrari = "Ferrari"
        case Porsche = "Porsche"
    }
    
    var yearOfIssue : YearOfIssue
    var trunkVolume: Double
    var filledTrunkSpace : Double
    
    var sportCartradeMark : SportCarTM

    var engineOperatingCondition : EngineOperatingCondition
    var fuel: Int
    
    init(yearOfIssue : YearOfIssue, trunkVolume: Double, filledTrunkSpace : Double, sportCartradeMark : SportCarTM, engineOperatingCondition : EngineOperatingCondition, fuel: Int) {
        self.yearOfIssue = yearOfIssue
        self.trunkVolume = trunkVolume
        self.filledTrunkSpace = filledTrunkSpace
        self.sportCartradeMark = sportCartradeMark
        self.engineOperatingCondition = engineOperatingCondition
        self.fuel = fuel
    }
}


//MARK: добавляем в класс SportСar функцию для погрузки автомобиля

extension SportСar: Load {
    
    func loadTrunkOfCar(bag: Double) -> Double {
        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в багажнике для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы положили в багажник вещи объемом \(bag) литров В багажнике осталось \(trunkVolume - filledTrunkSpace) свободного объема")
        }
        return filledTrunkSpace
    }
}

//MARK: добавляем в класс SportСar функцию для разгрузки автомобиля

extension SportСar: Unload {
    
    func unloadFromTrunkOfCar(bag: Double) -> Double {
        if bag > filledTrunkSpace {
            print("Нет вещей такого объема в багажнике")
        }else{
            filledTrunkSpace = filledTrunkSpace - bag
            print("Вы забрали из багажника вещи объемом \(bag) литров В багажнике стало \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }
}

//MARK: добавляем в класс SportСar возможность выводить в консоль информацию о созданном автомобиле

extension SportСar: CustomStringConvertible {
    var description: String {
        return ("\n 🏎 Спортивный автомобиль TM: \(sportCartradeMark.rawValue), год выпуска \(yearOfIssue.rawValue), объем багажника \(trunkVolume) литров, в настоящее время в багажнике лежит груз объемом \(filledTrunkSpace) литров.\n")
    }
}

