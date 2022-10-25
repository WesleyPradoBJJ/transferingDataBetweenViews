//
//  Screen04ViewController.swift
//  transferingDataBetweenViews
//
//  Created by Wesley Prado on 25/10/2022.
//

import UIKit

class Screen04ViewController: UIViewController {

    
    @IBOutlet weak var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabel.text = "On the weekend he likes to play \(ViewController.hobby ?? "") and have fun with his friends..."
    }
    

    @IBAction func backToMainScreen(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
