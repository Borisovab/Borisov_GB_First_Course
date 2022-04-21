//
//  main.swift
//  lesson 1_home work_task2
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 1

//MARK: - 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

func rightTriangle(side a: Double, side b: Double) {

    print("Заданы стороны прямоугольно треугольника: катет а = \(a), катет b = \(b)\n")

    let hypotenuse = sqrt(pow(a, 2) + pow(b, 2))
    print("Гипотенуза данного треугольника = \(String(format:"%.2f", hypotenuse))")

    let square = (a * b) / 2
    print("Площадь данного треугольника = \(String(format:"%.2f", square))")

    let perimeter = a + b + hypotenuse
    print("Периметр данного треугольника = \(String(format:"%.2f", perimeter))")
}

rightTriangle(side: 5, side: 7)
