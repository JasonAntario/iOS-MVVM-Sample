//
//  User.swift
//  iOS-MVVM-Sample
//
//  Created by Dmitry Sankovsky on 3.06.22.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "user1", password: "pass1")
    ]
}
