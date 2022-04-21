//
//  main.swift
//  lesson 3_home work_tasks
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Лекция 3 (Комплексные типы данных). Задача:

/*
 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

 6. Вывести значения свойств экземпляров в консоль.
 */


//MARK: - энумы для обеих структур

enum TM : String {
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

enum YearOfIssue : Int {
    case year2011 = 2011
    case year2012 = 2012
    case year2013 = 2013
    case year2014 = 2014
    case year2015 = 2015
    case year2016 = 2016
    case year2017 = 2017
    case year2018 = 2018
    case year2019 = 2019
    case year2020 = 2020
}

enum engineCondition: String {
    case on, off
}

enum windowsCondition: String {
    case open, close
}

enum filledVolumeTrunk: String {
    case loadTrunk50Liter = "Загрузить 50 литров"
    case unloadFromTrunk30Liter = "Выгрузить 30 литров"
    case loadTrunk5000Liter = "Загрузить 5000 литров"
    case unloadFromTrunk3000Liter = "Выгрузить 3000 литров"
}

//MARK: - начало структуры SportCar

struct SportCar {

    var tradeMark : TM
    var yearOfIssue : YearOfIssue

    var engine: engineCondition {
        willSet {
            if newValue == .on {
                print("Запустить двигатель")
            } else {
                print("Заглушить двигатель")
            }
        }
    }

    var windows: windowsCondition {
        willSet {
            if newValue == .open {
                print("Открыть окна")
            } else {
                print("Закрыть окна")
            }
        }
    }

    var trunkVolume: Double
    var filledTrunkSpace : Double

    mutating func options(properties: filledVolumeTrunk) {
        switch properties {

        case filledVolumeTrunk.loadTrunk50Liter:
            loadTrunkOfCar(bag: 50.0)
        case filledVolumeTrunk.unloadFromTrunk30Liter:
            unloadFromTrunkOfCar(bag: 30.0)
        default:
            break
        }
    }

    mutating func loadTrunkOfCar(bag: Double) -> Double {

        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в багажнике для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы положили в багажник вещи объемом \(bag) литров В багажнике осталось \(trunkVolume - filledTrunkSpace) свободного объема")
        }
        return filledTrunkSpace
    }

    mutating func unloadFromTrunkOfCar(bag: Double) -> Double {

        if bag > filledTrunkSpace {
            print("Нет вещей такого объема в багажнике")
        }else{
            filledTrunkSpace = filledTrunkSpace - bag
            print("Вы забрали из багажника вещи объемом \(bag) литров В багажнике стало \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }
}

//TODO: - экземпляры структуры SportCar -

var sportCar1 = SportCar(tradeMark: .Ferrari, yearOfIssue: .year2020, engine: .on, windows: .open, trunkVolume: 250, filledTrunkSpace: 10)

print("Спортивный автомобиль TM: \(sportCar1.tradeMark.rawValue), год выпуска \(sportCar1.yearOfIssue.rawValue), объем багажника \(sportCar1.trunkVolume) литров, в настоящее время в багажнике лежит груз объемом \(sportCar1.filledTrunkSpace) литров.\n")

sportCar1.options(properties: filledVolumeTrunk.loadTrunk50Liter)
sportCar1.options(properties: filledVolumeTrunk.loadTrunk50Liter)
sportCar1.options(properties: filledVolumeTrunk.loadTrunk50Liter)
sportCar1.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)

sportCar1.engine = .on
sportCar1.windows = .open
print("\n")

var sportCar2 = SportCar(tradeMark: .ChevroletCamaro, yearOfIssue: .year2014, engine: .on, windows: .open, trunkVolume: 200, filledTrunkSpace: 130)

print("Спортивный автомобиль TM: \(sportCar2.tradeMark.rawValue), год выпуска \(sportCar2.yearOfIssue.rawValue), объем багажника \(sportCar2.trunkVolume) литров, в настоящее время в багажнике лежит груз объемом \(sportCar2.filledTrunkSpace) литров.\n")

sportCar2.options(properties: filledVolumeTrunk.loadTrunk50Liter)
sportCar2.options(properties: filledVolumeTrunk.loadTrunk50Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)
sportCar2.options(properties: filledVolumeTrunk.unloadFromTrunk30Liter)

sportCar1.engine = .off
sportCar1.windows = .close
print("\n")



//MARK: - начало структуры Truck

struct Truck {

    var tradeMark : TruckTM
    var yearOfIssue : YearOfIssue

    var engine: engineCondition {
        willSet {
            if newValue == .on {
                print("Запустить двигатель")
            } else {
                print("Заглушить двигатель")
            }
        }
    }

    var windows: windowsCondition {
        willSet {
            if newValue == .open {
                print("Открыть окна")
            } else {
                print("Закрыть окна")
            }
        }
    }

    var trunkVolume: Double
    var filledTrunkSpace : Double

    mutating func options(properties: filledVolumeTrunk) {
        switch properties {

        case filledVolumeTrunk.loadTrunk5000Liter:
            loadTrunkOfTruck(bag: 5000.0)
        case filledVolumeTrunk.unloadFromTrunk3000Liter:
            unloadFromTrunkOfTruck(bag: 3000.0)
        default:
            break
        }
    }

    mutating func loadTrunkOfTruck(bag: Double) -> Double {

        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в кузове для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы загрузили в кузов груз объемом \(bag) у.е. В кузове осталось \(trunkVolume - filledTrunkSpace) свободного объема")
        }
        return filledTrunkSpace
    }

    mutating func unloadFromTrunkOfTruck(bag: Double) -> Double {

        if bag > filledTrunkSpace {
            print("В кузове нет такого объема для выгрузки")
        }else{
            filledTrunkSpace = filledTrunkSpace - bag
            print("Вы выгрузили из кузова груз объемом \(bag) у.е. В кузове стало \(trunkVolume - filledTrunkSpace) у.е. свободного объема")
        }
        return filledTrunkSpace
    }
}

//TODO: - экземпляры структуры Truck -

var truckCar1 = Truck(tradeMark: .MAN, yearOfIssue: .year2015, engine: .on, windows: .open, trunkVolume: 24000, filledTrunkSpace: 10000)

print("Грузовой автомобиль TM: \(truckCar1.tradeMark.rawValue), год выпуска \(truckCar1.yearOfIssue.rawValue), объем кузова \(truckCar1.trunkVolume) литров, в настоящее время в кузове лежит груз объемом \(truckCar1.filledTrunkSpace) литров.\n")

truckCar1.options(properties: filledVolumeTrunk.loadTrunk5000Liter)
truckCar1.options(properties: filledVolumeTrunk.loadTrunk5000Liter)
truckCar1.options(properties: filledVolumeTrunk.loadTrunk5000Liter)
truckCar1.options(properties: filledVolumeTrunk.unloadFromTrunk3000Liter)

truckCar1.engine = .on
truckCar1.windows = .open
print("\n")

var truckCar2 = Truck(tradeMark: .Scania, yearOfIssue: .year2017, engine: .on, windows: .open, trunkVolume: 7200, filledTrunkSpace: 2200)

print("Грузовой автомобиль TM: \(truckCar2.tradeMark.rawValue), год выпуска \(truckCar2.yearOfIssue.rawValue), объем кузова \(truckCar2.trunkVolume) литров, в настоящее время в кузове лежит груз объемом \(truckCar2.filledTrunkSpace) литров.\n")

truckCar2.options(properties: filledVolumeTrunk.loadTrunk5000Liter)
truckCar2.options(properties: filledVolumeTrunk.loadTrunk5000Liter)
truckCar2.options(properties: filledVolumeTrunk.unloadFromTrunk3000Liter)
truckCar2.options(properties: filledVolumeTrunk.unloadFromTrunk3000Liter)
truckCar2.options(properties: filledVolumeTrunk.unloadFromTrunk3000Liter)

sportCar1.engine = .off
sportCar1.windows = .close
print("\n")
