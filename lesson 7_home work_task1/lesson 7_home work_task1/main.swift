//
//  main.swift
//  lesson 7_home work_task1
//
//  Created by Александр Борисов on 14.05.2022.
//

import Foundation

//MARK: - HW GB. Урок 7. Управление ошибками в приложениях. Задача 1.
/*
 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.

 2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.
 */

enum CarWashServisError: Error {
    case invalidSelection
    case lackOfMoney(stillNeed:Int)
}

struct Service {
    var price: Int
    let product: Product
}

struct Product {
    let name: String
}

class CarWashServis {
    var services = ["Бесконтактная мойка": Service(price: 600, product: Product(name: "Бесконтактная мойка")),
                    "Мойка двигателя": Service(price: 1200, product: Product(name: "Мойка двигателя")),
                    "Чистка салона пылесосом": Service(price: 400, product: Product(name: "Чистка салона пылесосом")),
                    "Уборка багажного отделения": Service(price: 300, product: Product(name: "Уборка багажного отделения")),
                    "Мойка стекол изнутри": Service(price: 300, product: Product(name: "Мойка стекол изнутри"))]

    var cash = 0

    func needAService(serviceName name: String) throws -> Product {
        guard let service = services[name] else { throw CarWashServisError.invalidSelection }

        guard service.price <= cash else { throw CarWashServisError.lackOfMoney(stillNeed: service.price - cash) }

        cash -= service.price
        print("Стоимость услуги = \(service.price) рублей, Ваша cдача = \(cash) рублей")

        return service.product
    }
}


let carWash = CarWashServis()
carWash.cash = 2000

func chooseService(serviceName: String) {
    do {
        _ = try carWash.needAService(serviceName: serviceName)
    } catch CarWashServisError.invalidSelection {
        print("К сожалению, у нас пока нет данной услуги")
    } catch CarWashServisError.lackOfMoney(let stillNeed) {
        print("Для оказания данной услуги необходимо доплатить \(stillNeed) рублей")
    } catch let error {
        print(error.localizedDescription)
    }
}

chooseService(serviceName: "Бесконтактная мойка")
chooseService(serviceName: "Мойка двигателя")
chooseService(serviceName: "Мойка водителя")
chooseService(serviceName: "Мойка стекол изнутри")

carWash.cash = 1000
chooseService(serviceName: "Мойка стекол изнутри")
