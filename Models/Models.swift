//
//  Models.swift
//  HW-2.11-DY
//
//  Created by Denis Yarets on 26/10/2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
