//
//  main.swift
//  lesson 5_home work_tasks
//
//  Created by Александр Борисов on 28.04.2022.
//

import Foundation

//MARK: - Урок 5. ООП: требование к классам, протоколы, расширения, полиморфизм, композиция.

/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

 6. Вывести сами объекты в консоль.
 */

//MARK: - Общие enumerations

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

//MARK: - Экземпляры класса SportСar

var sportCar1 = SportСar(yearOfIssue: .year2019, trunkVolume: 250, filledTrunkSpace: 50, sportCartradeMark: .AudiSport)
print(sportCar1)
sportCar1.engineAction(action: .on)
sportCar1.windowsAction(action: .open)
sportCar1.loadTrunkOfCar(bag: 100)
sportCar1.loadTrunkOfCar(bag: 150)
sportCar1.unloadFromTrunkOfCar(bag: 150)
sportCar1.engineAction(action: .off)
sportCar1.windowsAction(action: .close)


var sportCar2 = SportСar(yearOfIssue: .year2020, trunkVolume: 100, filledTrunkSpace: 5, sportCartradeMark: .McLaren)
print(sportCar2)
sportCar2.engineAction(action: .on)
sportCar2.windowsAction(action: .open)
sportCar2.loadTrunkOfCar(bag: 20)
sportCar2.loadTrunkOfCar(bag: 150)
sportCar2.unloadFromTrunkOfCar(bag: 25)
sportCar2.engineAction(action: .off)
sportCar2.windowsAction(action: .close)

//MARK: - Экземпляры класса TrunkCar

var trunkCar1 = TrunkCar(yearOfIssue: .year2015, trunkVolume: 24500, filledTrunkSpace: 4500, truckTradeMark: .MAN)
print(trunkCar1)
trunkCar1.engineAction(action: .on)
trunkCar1.windowsAction(action: .open)
trunkCar1.loadTrunkOfCar(bag: 10000)
trunkCar1.loadTrunkOfCar(bag: 15000)
trunkCar1.unloadFromTrunkOfCar(bag: 15000)
trunkCar1.engineAction(action: .off)
trunkCar1.windowsAction(action: .close)


var trunkCar2 = TrunkCar(yearOfIssue: .year2019, trunkVolume: 7500, filledTrunkSpace: 4500, truckTradeMark: .Volkswagen)
print(trunkCar2)
trunkCar2.engineAction(action: .on)
trunkCar2.windowsAction(action: .open)
trunkCar2.loadTrunkOfCar(bag: 4000)
trunkCar2.loadTrunkOfCar(bag: 2000)
trunkCar2.unloadFromTrunkOfCar(bag: 5500)
trunkCar2.engineAction(action: .off)
trunkCar2.windowsAction(action: .close)
