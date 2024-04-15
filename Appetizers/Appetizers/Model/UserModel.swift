//
//  User.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 11/04/24.
//

import Foundation

struct UserModel: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
