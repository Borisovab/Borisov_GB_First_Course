//
//  main.swift
//  lesson 1_home work_task3
//
//  Created by Александр Борисов on 21.04.2022.
//

import Foundation

//MARK: - Домашняя работа к Лекции 1

//MARK: - 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

func benefitOfTheDeposit(investedMoney: Double, percent: Double, period: Int) -> Double {

    var totalBenefit = 0.0

    for i in 1...period {
        totalBenefit = investedMoney * pow((1 + ((percent / 100) / 12)), Double(12 * i))
    }
    return totalBenefit
}

let myFirstBenefit = benefitOfTheDeposit(investedMoney: 1000, percent: 5.0, period: 5)
print(myFirstBenefit)
