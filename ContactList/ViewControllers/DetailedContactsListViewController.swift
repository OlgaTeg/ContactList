//
//  DetailedContactsListViewController.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

import UIKit

class DetailedContactsListViewController: UITableViewController {

    var contacts: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        contacts[section].fullName
//    }
    
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

extension DetailedContactsListViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let fullNameLabel = UILabel(frame: CGRect(
            x: 16, y: 3, width: tableView.frame.width, height: 20
        ))
        fullNameLabel.text = contacts[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullNameLabel.textColor = .white
        fullNameLabel.textAlignment = .left
        
        let contentView = UIView()
        contentView.addSubview(fullNameLabel)
        return contentView
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .gray
    }
}
