//
//  main.swift
//  lesson 4_home work_tasks
//
//  Created by Александр Борисов on 24.04.2022.
//

import Foundation

/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

 6. Вывести значения свойств экземпляров в консоль.
 */

//MARK: - энумы

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

enum EngineCondition: String {
    case on, off
}

enum WindowsCondition: String {
    case open, close
}

//MARK: - Базовый класс Car

class Car {

    var yearOfIssue : YearOfIssue

    var engine: EngineCondition {
        willSet {
            if newValue == .on {
                print("Запустить двигатель")
            } else {
                print("Заглушить двигатель")
            }
        }
    }

    var windows: WindowsCondition {
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

    init (yearOfIssue : YearOfIssue, engine: EngineCondition, windows: WindowsCondition, trunkVolume: Double, filledTrunkSpace : Double) {

        self.yearOfIssue = yearOfIssue
        self.engine = engine
        self.windows = windows
        self.trunkVolume = trunkVolume
        self.filledTrunkSpace = filledTrunkSpace
    }

    func loadTrunkOfCar(bag: Double) -> Double {

        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в багажнике для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы положили в багажник вещи объемом \(bag) литров В багажнике осталось \(trunkVolume - filledTrunkSpace) свободного объема")
        }
        return filledTrunkSpace
    }

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

//MARK: - Подкласс SportCar, наследующий класс Car

class SportCar: Car {
    var sportCartradeMark : SportCarTM

    init (yearOfIssue : YearOfIssue, engine: EngineCondition, windows: WindowsCondition, trunkVolume: Double, filledTrunkSpace : Double, sportCartradeMark : SportCarTM) {

        self.sportCartradeMark = sportCartradeMark
        super.init(yearOfIssue: yearOfIssue, engine: engine, windows: windows, trunkVolume: trunkVolume, filledTrunkSpace: filledTrunkSpace)
    }

    override func loadTrunkOfCar(bag: Double) -> Double {

        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в багажнике для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы положили в багажник вещи объемом \(bag) литров В багажнике осталось \(trunkVolume - filledTrunkSpace) свободного объема")
        }
        return filledTrunkSpace
    }

    override func unloadFromTrunkOfCar(bag: Double) -> Double {

        if bag > filledTrunkSpace {
            print("Нет вещей такого объема в багажнике")
        }else{
            filledTrunkSpace = filledTrunkSpace - bag
            print("Вы забрали из багажника вещи объемом \(bag) литров В багажнике стало \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }

    func printInfo() {
        print("\n Спортивный автомобиль TM: \(sportCartradeMark.rawValue), год выпуска \(yearOfIssue.rawValue), объем багажника \(trunkVolume) литров, в настоящее время в багажнике лежит груз объемом \(filledTrunkSpace) литров.\n")
    }

}

//MARK: - экземпляры подкласса SportCar

var sportCar1 = SportCar(yearOfIssue: .year2019, engine: .on, windows: .open, trunkVolume: 250, filledTrunkSpace: 10, sportCartradeMark: .ChevroletCamaro)
sportCar1.printInfo()

sportCar1.windows = .open
sportCar1.engine = .on

sportCar1.loadTrunkOfCar(bag: 100)
sportCar1.loadTrunkOfCar(bag: 90)
sportCar1.unloadFromTrunkOfCar(bag: 110)
sportCar1.unloadFromTrunkOfCar(bag: 140)
sportCar1.windows = .close
sportCar1.engine = .off

var sportCar2 = SportCar(yearOfIssue: .year2014, engine: .on, windows: .open, trunkVolume: 200, filledTrunkSpace: 100, sportCartradeMark: .Ferrari)
sportCar2.printInfo()

sportCar2.windows = .open
sportCar2.engine = .on

sportCar2.loadTrunkOfCar(bag: 100)
sportCar2.loadTrunkOfCar(bag: 100)
sportCar2.unloadFromTrunkOfCar(bag: 40)
sportCar2.unloadFromTrunkOfCar(bag: 140)

sportCar2.windows = .close
sportCar2.engine = .off

print("\n =======================================================================================\n")

//MARK: - Подкласс Truck, наследующий класс Car

class Truck: Car {
    var truckTradeMark : TruckTM

    init (yearOfIssue : YearOfIssue, engine: EngineCondition, windows: WindowsCondition, trunkVolume: Double, filledTrunkSpace : Double, truckTradeMark : TruckTM) {

        self.truckTradeMark = truckTradeMark
        super.init(yearOfIssue: yearOfIssue, engine: engine, windows: windows, trunkVolume: trunkVolume, filledTrunkSpace: filledTrunkSpace)
    }


    override func loadTrunkOfCar(bag: Double) -> Double {

        if filledTrunkSpace + bag > trunkVolume {
            print("Недостаточно свободного места в кузове для этого груза")
        }else{
            filledTrunkSpace = filledTrunkSpace + bag
            print("Вы загрузили в кузов груз объемом \(bag) литров. В кузове осталось \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }

    override func unloadFromTrunkOfCar(bag: Double) -> Double {

        if bag > filledTrunkSpace {
            print("В кузове нет такого объема для выгрузки")
        }else{
            filledTrunkSpace = filledTrunkSpace - bag
            print("Вы выгрузили из кузова груз объемом \(bag) литров. В кузове стало \(trunkVolume - filledTrunkSpace) литров свободного объема")
        }
        return filledTrunkSpace
    }

    func printInfo() {
        print("\n Грузовой автомобиль TM: \(truckTradeMark.rawValue), год выпуска \(yearOfIssue.rawValue), объем кузова \(trunkVolume) литров, в настоящее время в кузове находится груз объемом \(filledTrunkSpace) литров.\n")
    }
}

//MARK: - экземпляры подкласса Truck

var truck1 = Truck(yearOfIssue: .year2015, engine: .on, windows: .open, trunkVolume: 25000, filledTrunkSpace: 10000, truckTradeMark: .Scania)
truck1.printInfo()

truck1.windows = .open
truck1.engine = .on

truck1.loadTrunkOfCar(bag: 3000)
truck1.loadTrunkOfCar(bag: 9000)
truck1.unloadFromTrunkOfCar(bag: 11110)
truck1.unloadFromTrunkOfCar(bag: 11140)
truck1.windows = .close
truck1.engine = .off

var truck2 = Truck(yearOfIssue: .year2018, engine: .on, windows: .open, trunkVolume: 6500, filledTrunkSpace: 1500, truckTradeMark: .MAN)
truck2.printInfo()

truck2.windows = .open
truck2.engine = .on

truck2.loadTrunkOfCar(bag: 1500)
truck2.loadTrunkOfCar(bag: 1000)
truck2.unloadFromTrunkOfCar(bag: 400)
truck2.unloadFromTrunkOfCar(bag: 5140)

truck2.windows = .close
truck2.engine = .off


