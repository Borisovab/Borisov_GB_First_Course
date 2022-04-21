//
//  main.swift
//  lesson 2_home work_task6
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 2

//MARK: - 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

//TODO: a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//TODO: b. Пусть переменная p изначально равна двум — первому простому числу.
//TODO: c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//TODO: d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//TODO: e. Повторять шаги c и d, пока возможно.


var eratosthenesArray = [Int]()
let n = 100
for i in 0...n {
    eratosthenesArray.append(i)
}

eratosthenesArray[1] = 0

var k = 2

while k <= n {

    if eratosthenesArray[k] != 0 {
        var j = k + k

        while j <= n {
            eratosthenesArray[j] = 0
            j = j + k
        }
    }

    k += 1
}

for (index, value) in eratosthenesArray.enumerated().reversed() {

    if value == 0 {
        eratosthenesArray.remove(at: index)
    }
}

print(eratosthenesArray)
