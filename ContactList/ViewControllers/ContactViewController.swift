//
//  ContactViewController.swift
//  ContactList
//
//  Created by Olga Tegza on 22.11.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = contact.fullName
        
        phoneLabel.text = "\(contact.phone)"
        emailLabel.text = "\(contact.email)"
    }
}
