//
//  main.swift
//  lesson 2_home work_task5
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 2

//MARK: - 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.


func fibonacci(_ elements: Int) -> [Int] {

    var fibArray = [0, 1, 1]

    var res = 0

    for i in 2...(elements - 1) {
        res = fibArray[i] + fibArray[i - 1]
        fibArray.append(res)
    }
    return fibArray
}

let newArray = fibonacci(50)
print(newArray)


