//
//  Person.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

struct Person {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let lastNames = DataStore.shared.lastNames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        for index in 0..<DataStore.shared.names.count {
            let person = Person(
                name: names[index],
                lastName: lastNames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
