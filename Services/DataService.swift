//
//  DataService.swift
//  HW-2.11-DY
//
//  Created by Denis Yarets on 26/10/2023.
//

import Foundation

final class DataService {
    
    
    
    static func getData() -> [Person] {
        var names = ["Alice", "Bob", "Charlie", "David", "Eva", "Fiona", "George", "Hannah", "Isaac", "Julia"]
        var surnames = ["Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor"]
        var phones = ["555-100-10", "555-110-20", "555-120-30", "555-130-40", "555-140-50", "555-150-60", "555-160-70", "555-170-80", "555-180-90", "555-190-100"]
        var emails = ["alice.smith@example.com", "bob.johnson@example.com", "charlie.williams@example.com", "david.jones@example.com", "eva.brown@example.com", "fiona.davis@example.com", "george.miller@example.com", "hannah.wilson@example.com", "isaac.moore@example.com", "julia.taylor@example.com"]
        
        names.shuffle()
        surnames.shuffle()
        phones.shuffle()
        emails.shuffle()
        
        var persons = [Person]()
        
        for index in 0...Int.random(in: 3...10) {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index])
            )
        }
        
        return persons
    }
    
}
