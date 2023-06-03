//
//  ViewController.swift
//  CatchTheKennyGame
//
//  Created by Şeyda Aydın on 3.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var nameText = ""
    var surnameText = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var surnameTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        nameText = nameTextField.text!
        surnameText = surnameTextField.text!
        
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.username = nameText
            destinationVC.userSurname = surnameText
        }
    }
    
}

