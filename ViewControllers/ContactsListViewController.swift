//
//  ContactsListViewController.swift
//  HW-2.11-DY
//
//  Created by Denis Yarets on 26/10/2023.
//

import UIKit

final class ContactsListViewController: UITableViewController {

    var data: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationController = self.navigationController,
           let tabBarController = navigationController.tabBarController as? TabBarController {
            data = tabBarController.data
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController,
        let person = sender as? Person else { return }
        contactVC.person = person
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row].fullName
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = data[indexPath.row]
        performSegue(withIdentifier: "showContacts", sender: person)
    }

}
