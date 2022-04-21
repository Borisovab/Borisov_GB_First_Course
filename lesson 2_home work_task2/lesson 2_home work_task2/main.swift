//
//  main.swift
//  lesson 2_home work_task2
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 2

//MARK: - 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func oddNumbers(checkNumber: Int) {

    if checkNumber % 3 == 0 {
        print(" Число \(checkNumber) делится на 3 без остатка")
    } else {
        print("Число \(checkNumber) не делится на 3 без остатка")
    }
}

oddNumbers(checkNumber: 3456)
