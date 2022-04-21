//
//  main.swift
//  lesson 2_home work_task3
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 2

//MARK: - 3 и 4. Создать возрастающий массив из 100 чисел. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var newArray = [Int]()

for i in 1...100 {
    newArray.append(i)
}
print(newArray, "\n")

func removeNumbers(array: inout [Int]) -> [Int] {

    for i in stride(from: array.count - 1, to: array.startIndex, by: -1) {

        switch i {

        case let i  where i % 2 == 0:
            array.remove(at: array[i])

        case let i  where i % 3 != 0:
            array.remove(at: array[i])

        default: break

        }
    }
    return array
}

let thinnedOutArray = removeNumbers(array: &newArray)
print(thinnedOutArray)
