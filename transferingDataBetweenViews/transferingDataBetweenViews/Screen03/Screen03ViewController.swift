//
//  Screen03ViewController.swift
//  transferingDataBetweenViews
//
//  Created by Wesley Prado on 22/10/2022.
//

import UIKit

class Screen03ViewController: UIViewController {

    @IBOutlet weak var screen03Label: UILabel!
    @IBOutlet weak var screen03Image: UIImageView!
    
    var labelScreen03 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen03Label.text = labelScreen03
        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextGoScreen04(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Screen04ViewController" , bundle: nil).instantiateViewController(withIdentifier: "Screen04ViewController") as? Screen04ViewController

        navigationController?.pushViewController( vc ?? UIViewController() , animated: true)
    }
    
}
