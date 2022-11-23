//
//  TabBarController.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let contacts = Person.getPersonsList()

    private func setupViewControllers() {
            guard let viewControllers = viewControllers else { return }
            for viewController in viewControllers {
                if let contactList = viewController as? ContactListViewController {
                    contactList.contacts = contacts
                } else if let detailedContactsList = viewController as? DetailedContactsListViewController {
                    detailedContactsList.contacts = contacts
                }
            }
        }
}
