//
//  SecondViewController.swift
//  SecondApplicationDemo
//
//  Created by Vishal Jagtap on 25/09/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var backDataPassDelegate : BackDataPassing?
    //step 2 -- create a property of protocol
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnBack(_ sender: Any) {
        guard let delegate1 = backDataPassDelegate else { return }
        
        let extractedFirstName = self.firstNameTextField.text
        let extractedMiddleName = self.middleNameTextField.text
        let extractedLastName =  self.lastNameTextField.text
        
        //pass Dat - step 3
        delegate1.backDataPass(firstName: extractedFirstName!,
                               middleName: extractedMiddleName!,
                               lastName: extractedLastName!)
        
        self.navigationController?.popViewController(animated: true)
    }
}
