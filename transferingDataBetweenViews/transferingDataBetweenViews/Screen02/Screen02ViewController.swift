//
//  Screen02ViewController.swift
//  transferingDataBetweenViews
//
//  Created by Wesley Prado on 22/10/2022.
//

import UIKit

class Screen02ViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var screen02Image: UIImageView!
    var age : String = ""
    var occupation : String = ""
    
    var fullName = "Teste"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = fullName
        
    }
    
    @IBAction func nextGoScreen03(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Screen03ViewController" , bundle: nil).instantiateViewController(withIdentifier: "Screen03ViewController") as? Screen03ViewController

        vc?.labelScreen03 = " He is \(age) years old and he works as a \(occupation)."

        navigationController?.pushViewController( vc ?? UIViewController() , animated: true)
    }
    
}
