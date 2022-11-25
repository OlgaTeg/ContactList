//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
            let contact = contacts[indexPath.row]
            var content = cell.defaultContentConfiguration()
            content.text = contact.fullName
            cell.contentConfiguration = content

            return cell
        }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactVC.contact = contacts[indexPath.row]
    }
}
