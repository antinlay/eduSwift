//
//  ViewController.swift
//  AlertController
//
//  Created by Janiece Eleonor on 10/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButton(_ sender: Any) {
        self.helloLabel.text = "Hi, "
        self.alert(title: "Внимание!", message: "Введите ваше имя: ", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default) { action in
            let text = alertController.textFields?.first
            self.helloLabel.text! += (text?.text!)! + ("!")
        }
        
        alertController.addTextField { textField in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

