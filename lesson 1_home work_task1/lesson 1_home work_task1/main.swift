//
//  main.swift
//  lesson 1_home work_task1
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 1

//MARK: - 1. Решить квадратное уравнение.

func quadraticEquation(a: Double, b: Double, c: Double) {
    print("Решение квадратного уравнения \(Int(a))x\u{00B2} + \(Int(b))x + \(Int(c)) = 0")

    let discriminant = pow(b, 2) - 4 * a * c

    switch discriminant {
    case let d where d == 0:
        let x = (-b) / (2 * a)
        print("Данное уравнение имеет один корень: x = \(x)")
    case let d where d > 0:
        let x1 = ((-b) + sqrt(discriminant)) / (2 * a)
        let x2 = ((-b) - sqrt(discriminant)) / (2 * a)
        print("Данное уравнение имеет два корня: x1 = \(x1), x2 = \(x2)")
    default: print("Данное уравнение не имеет корней, т.к. дискриминант меньше нуля.")
    }
}

quadraticEquation(a: 2, b: 7, c: 4)
