//
//  DetailedContactsListViewController.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

import UIKit

class DetailedContactsListViewController: UITableViewController {

    var contacts = Person.getPersonsList()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailPerson", for: indexPath)
            let person = contacts[indexPath.section]
            var content = cell.defaultContentConfiguration()

            switch indexPath.row {
            case 0:
                content.text = person.phone
                content.image = UIImage(systemName: "phone")
            default:
                content.text = person.email
                content.image = UIImage(systemName: "envelope")
            }
        
            cell.contentConfiguration = content
            return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        }
}
