//
//  main.swift
//  lesson 7_home work_task2
//
//  Created by Александр Борисов on 14.05.2022.
//

import Foundation


//MARK: - Урок 7. Управление ошибками в приложениях.

/*
 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
 
 2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.
 */


//MARK: - Экземпляры класса SportСar

//TODO: экземпляр sportCar1
var sportCar1 = SportСar(yearOfIssue: .year2019, trunkVolume: 250, filledTrunkSpace: 50, sportCartradeMark: .AudiSport, engineOperatingCondition: .working, fuel: 30)
print(sportCar1)

do {
    try sportCar1.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

sportCar1.windowsAction(action: .open)
sportCar1.loadTrunkOfCar(bag: 100)
sportCar1.loadTrunkOfCar(bag: 150)
sportCar1.unloadFromTrunkOfCar(bag: 150)

do {
    try sportCar1.engineAction(action: .off)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}
sportCar1.windowsAction(action: .close)

sportCar1.engineOperatingCondition = .broken
do {
    try sportCar1.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

//TODO: экземпляр sportCar2
var sportCar2 = SportСar(yearOfIssue: .year2020, trunkVolume: 100, filledTrunkSpace: 5, sportCartradeMark: .McLaren, engineOperatingCondition: .working, fuel: 40)
print(sportCar2)

do {
    try sportCar2.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

sportCar2.windowsAction(action: .open)
sportCar2.loadTrunkOfCar(bag: 20)
sportCar2.loadTrunkOfCar(bag: 150)
sportCar2.unloadFromTrunkOfCar(bag: 25)

do {
    try sportCar2.engineAction(action: .off)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

sportCar2.windowsAction(action: .close)

sportCar2.fuel = 0
do {
    try sportCar2.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

//MARK: - Экземпляры класса TrunkCar

//TODO: экземпляр trunkCar1
var trunkCar1 = TrunkCar(yearOfIssue: .year2015, trunkVolume: 24500, filledTrunkSpace: 4500, truckTradeMark: .MAN, engineOperatingCondition: .working, fuel: 200)
print(trunkCar1)

do {
    try trunkCar1.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

trunkCar1.windowsAction(action: .open)
trunkCar1.loadTrunkOfCar(bag: 10000)
trunkCar1.loadTrunkOfCar(bag: 15000)
trunkCar1.unloadFromTrunkOfCar(bag: 15000)

do {
    try trunkCar1.engineAction(action: .off)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

trunkCar1.windowsAction(action: .close)

trunkCar1.engineOperatingCondition = .broken
do {
    try trunkCar1.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

//TODO: экземпляр trunkCar2
var trunkCar2 = TrunkCar(yearOfIssue: .year2019, trunkVolume: 7500, filledTrunkSpace: 4500, truckTradeMark: .Volkswagen, engineOperatingCondition: .working, fuel: 100)
print(trunkCar2)

do {
    try trunkCar2.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

trunkCar2.windowsAction(action: .open)
trunkCar2.loadTrunkOfCar(bag: 4000)
trunkCar2.loadTrunkOfCar(bag: 2000)
trunkCar2.unloadFromTrunkOfCar(bag: 5500)

do {
    try trunkCar2.engineAction(action: .off)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}

trunkCar2.windowsAction(action: .close)

trunkCar2.fuel = 0
do {
    try trunkCar2.engineAction(action: .on)
} catch CarsAbilityToWork.engineDysfunction {
    print("Двигатель неисправен")
} catch CarsAbilityToWork.noFuel {
    print("Нет топлива в баке")
}
