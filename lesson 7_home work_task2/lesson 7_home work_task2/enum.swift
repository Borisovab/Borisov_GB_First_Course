//
//  enum.swift
//  lesson 7_home work_task2
//
//  Created by Александр Борисов on 15.05.2022.
//

import Foundation

//MARK: - Общие enumerations

enum CarsAbilityToWork: Error {
    case noFuel                 // нет топлива в баке
    case engineDysfunction      // двигатель неиправен
}

enum YearOfIssue : Int {
    case year2011 = 2011
    case year2012 = 2012
    case year2013 = 2013
    case year2014 = 2014
    case year2015 = 2015
    case year2016 = 2016
    case year2017 = 2017
    case year2018 = 2018
    case year2019 = 2019
    case year2020 = 2020
}

enum EngineCondition: String {
    case on, off
}

enum WindowsCondition: String {
    case open, close
}

enum EngineOperatingCondition: String {
    case working, broken
}
