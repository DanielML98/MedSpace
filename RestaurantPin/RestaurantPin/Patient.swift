//
//  Pacient.swift
//  RestaurantPin
//
//  Created by Luis Roberto Blancas Lemini on 24/01/20.
//  Copyright © 2020 Luis Roberto Blancas Lemini. All rights reserved.
//

import Foundation

enum Sex{
    case Male
    case Female
    case NonBinary
}

struct Patient{
    
    var expedientNumber: Int = 0
    let date: Date
    let name: String
    var age: Int
    let sex: String
    let occupation: String
    var domicile: String
    var telephone: Int
    
    init(name: String,age:Int,sex: String,occupation: String, domicile: String, telephone: Int) {
        self.name = name
        self.age = age
        self.sex = sex
        self.occupation = occupation
        self.domicile = domicile
        self.telephone = telephone
        date = Date()
        expedientNumber += 1
    }
    
}
