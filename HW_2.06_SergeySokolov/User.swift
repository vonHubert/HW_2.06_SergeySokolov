//
//  User.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import Foundation

struct User {
    
    let login: String
    let password: String
    
    let name: String
    let surname: String
    let birthYear: Int
    let birthMonth: Int
    let birthDay: Int
    
    static func getUserData() -> User {
        User(
            login: "S.Sokolov",
            password: "1111",
            name: "Sergey",
            surname: "Sokolov",
            birthYear: 1988,
            birthMonth: 2,
            birthDay: 29
        )
    }
}

struct Car {
    let brand = "Mercedes"
    let model = "190e Cosworth"
    let year = 1988
    let power = 207
}

struct Job {
    let company = "InfoSecurity"
    let department = "Sales department"
    let position = "Financial sector sales head"
}

struct Education {
    let university = "London School of Economics"
    let degree = "Masters Degree"
    let graduationYear = "2011"
}
