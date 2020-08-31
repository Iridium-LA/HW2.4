//
//  UsersBase.swift
//  HW2.4
//
//  Created by Игорь Зигура on 30.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//
import Foundation

class User {
    private let username: String
    private let password: String
    
    private var about = ""
    private var study = ""
    private var career = ""
    private var hobby = ""
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func editAbout(with content: String) {
        self.about = content
    }
    
    func editStudy(with content: String) {
        self.study = content
    }
    
    func editCareer(with content: String) {
        self.career = content
    }
    
    func editHobby(with content: String) {
        self.hobby = content
    }
    
    func getUserName() -> String {
        return username
    }
    
    func getUserPassword() -> String {
        return password
    }
    
    func getAbout() -> String {
        return about
    }
    
    func getStudy() -> String {
        return study
    }
    
    func getCareer() -> String {
        return career
    }
    
    func getHobby() -> String {
        return hobby
    }
    
    
}


let firstUser = User(username: "user", password: "qwerty")
let myAbout = """
Родился 27.03.2020 в г. Калининграде.
В 2007 переехал в Москву.
В 2013 женился.
В 2016 родилась дочь.
Жив в настоящее время
"""
let myStudy = """
1996 - 2007 - Лицей 35 г. Калининграда
2007 - 2013 - МГТУ им. Н.Э. Баумана, г. Москва
2015 - 2016 - НИУ ВШЭ г. Москва
2018 - 2019 - бизнес-курсы Like-центр, г. Москва
"""
let myCareer = """
2012 - 2013 - "ИОН", менеджер
2013 - 2014 - ВПК "НПО Машиностроения", инженер
2014 - ЗАО "Рено Россия", инженер
2014 - 2016 - ООО "Руполис-Растуново", ведущий инженер
2016 - 2017 - ООО "Акселерейшн инжиниринг", главный инженер проекта, руководитель проектов
2017 - 2018 - ООО "Марс Проджект", заместитель Генерального директора, соучредитель
2019 - н.в. - LR Projet SA (Швейцария), BIM-специалист
2019 - 2020 - ООО "Ли Рози и Зигура", Генеральный директор, соучредитель
"""
let myHobby = """
Доброволец ПСО "Лиза Алерт"
Спорт (бег, интервальные тренировки)
Танцы
Саморазвитие
"""
