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
    let brand: String
    let model: String
    let year: Int
    let power: Int
    
    static func getCarData() -> Car {
        Car(
            brand: "Mercedes",
            model: "190E 2.3 Cosworth",
            year: 1988,
            power: 207
        )
    }
}

struct Job {
    let company: String
    let department: String
    let position: String
    
    static func getJobData() -> Job {
        Job(
            company: "InfoSecurity",
            department: "Sales department",
            position: "Financial sector sales head"
        )
    }
}

struct Education {
    let university: String
    let degree: String
    let graduationYear: Int

    static func getEducationData() -> Education {
        Education(
            university: "London School of Economics",
            degree: "Masters Degree",
            graduationYear: 2011
        )
    }
}
