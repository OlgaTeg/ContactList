//
//  TabBarController.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    let contacts = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let navigationController = viewController as? UINavigationController {
                if let contactList = navigationController.topViewController as? ContactListViewController {
                    contactList.contacts = contacts
                } else if let navigationController = viewController as? UINavigationController {
                    if let detailedContactsList = navigationController.topViewController as? DetailedContactsListViewController {
                        detailedContactsList.contacts = contacts
                    }
                }
            }
        }
    }
}

