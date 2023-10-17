//
//  ViewController.swift
//  PickerView
//
//  Created by Janiece Eleonor on 10/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        // Подписаться на протокол
//        picker.dataSource = self
        
        self.view.addSubview(picker)
    }

    extension ViewController: UIPickerViewDataSource {
        
    }

}

