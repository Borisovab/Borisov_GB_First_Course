//
//  main.swift
//  lesson 2_home work_task1
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 2

//MARK: - 1. Написать функцию, которая определяет, четное число или нет.

func checkValue(value: Int) {

    if value % 2 == 0 {
        print("Число \(value) четное")
    } else {
        print("Число \(value) нечетное")
    }
}

checkValue(value: 3)
