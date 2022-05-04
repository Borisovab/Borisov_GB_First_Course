//
//  main.swift
//  lesson 6_home work_tasks
//
//  Created by Александр Борисов on 01.05.2022.
//

import Foundation

//MARK: - Урок 6. Продвинутое ООП.

/*
 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

 3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
 */

// В моем примере, в очередь к выступлению на соревнование определяются участники. Далее, они выбывают из этого списка по мере выхода на выступление.

protocol Queue {
    associatedtype Element                              // объявляем связанный тип с именем Element
    mutating func inQueue(_ element: Element) -> Bool   // функция вставляет элемент в конец очереди
    mutating func outQueue() -> Element?                // Удаляет элемент из начала очереди
    var isEmpty: Bool { get }                           // переменная для проверки пустой массив или нет
}


struct QueueArray<T>: Queue {

    var array: [T] = []

    var isEmpty: Bool {
        array.isEmpty
    }

    mutating func inQueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }

    mutating func outQueue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
}

//MARK: - как в лекции, делаю расширение структуры Array, создаю subscript, чтобы безопасно проверить, существует значение по индексу или нет
extension Array {

    subscript(safe index: Int) -> Element? {
        if index < 0 || index > count - 1 {
            return nil
        }
        return self[index]
    }
}


//MARK: - создаю очередь, добавляя элемент в конец очереди

var queueForTheTournament = QueueArray<String>()

queueForTheTournament.inQueue("Alex")
print(queueForTheTournament)
queueForTheTournament.inQueue("Bob")
print(queueForTheTournament)
queueForTheTournament.inQueue("Sam")
print(queueForTheTournament)
queueForTheTournament.inQueue("Ron")
print(queueForTheTournament)
queueForTheTournament.inQueue("Adam")
print(queueForTheTournament)
queueForTheTournament.inQueue("Jimmy")
print(queueForTheTournament)
queueForTheTournament.inQueue("Bob")
print(queueForTheTournament)
queueForTheTournament.inQueue("Ron")
print(queueForTheTournament)
queueForTheTournament.inQueue("Alex")
print(queueForTheTournament)
queueForTheTournament.inQueue("Jimmy")
print(queueForTheTournament)

//MARK: - реализую метод map() для своей коллекции - создаю словарь, где сичтаю, сколько каких имен находится в очереди.

print("\nСписок имен людей, стоящих в очереди: ")
var numberOfRepeatedNames = queueForTheTournament.array.map { ($0, 1) }
let counts = Dictionary<String, Int>(numberOfRepeatedNames, uniquingKeysWith: +)
print(counts, "\n")

//MARK: - проверка значений по индексам через subscript

print(queueForTheTournament.array[safe: 5])
print(queueForTheTournament.array[safe: 10])

//MARK: - проверка пустой массив или нет
print(queueForTheTournament.isEmpty)

//MARK: - удаляю элемент из начала очереди

queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)
queueForTheTournament.outQueue()
print(queueForTheTournament)

//MARK: - проверка пустой массив или нет

print(queueForTheTournament.isEmpty)

