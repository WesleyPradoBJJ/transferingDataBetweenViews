//
//  ViewController.swift
//  transferingDataBetweenViews
//
//  Created by Wesley Prado on 22/10/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var occupationTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    static var hobby : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
        
    @IBAction func writeUpGoScreen02(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Screen02ViewController" , bundle: nil).instantiateViewController(withIdentifier: "Screen02ViewController") as? Screen02ViewController
        
        vc?.fullName = "This is \(nameTextField.text ?? "") \(surnameTextField.text ?? "")..."
        vc?.age = ageTextField.text ?? ""
        vc?.occupation = occupationTextField.text ?? ""
        ViewController.hobby = hobbyTextField.text
        navigationController?.pushViewController( vc ?? UIViewController() , animated: true)
    }
    
}

