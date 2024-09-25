//
//  ViewController.swift
//  SecondApplicationDemo
//
//  Created by Vishal Jagtap on 25/09/24.
//

import UIKit

//step 4 -- conform to protocol
class ViewController: UIViewController, BackDataPassing{
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func btnNext(_ sender: Any) {
        let svc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
                  as! SecondViewController
        
        //step 6 -- assign the property delegate of secondViewController to self i.e. current instance of ViewController
        svc.backDataPassDelegate = self
        
        self.navigationController?.pushViewController(svc, animated: true)
    }
    
    //step 5 -- implement protocol related methods
    func backDataPass(firstName: String, middleName: String, lastName: String) {
        self.firstNameLabel.text = firstName
        self.middleNameLabel.text = middleName
        self.lastNameLabel.text = lastName
    }
}
