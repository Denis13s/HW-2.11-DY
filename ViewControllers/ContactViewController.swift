//
//  ContactViewController.swift
//  HW-2.11-DY
//
//  Created by Denis Yarets on 26/10/2023.
//

import UIKit

final class ContactViewController: UIViewController {

    var person: Person!
    
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelPhone.text = "Phone: \(person.phone)"
        labelEmail.text = "Email: \(person.email)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
