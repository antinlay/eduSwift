//
//  ViewController.swift
//  Switch
//
//  Created by Janiece Eleonor on 10/13/23.
//

import UIKit

class ViewController: UIViewController {
    
//    let mySwitch = UISwitch()

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Создали свитч
//        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
//        self.view.addSubview(self.mySwitch)
//        // on
//        self.mySwitch.setOn(true, animated: true)
//        // Проверка включен ли свитч
//        if self.mySwitch.isOn {
//            print("sw on")
//        } else {
//            print("sw off")
//        }
//
//        self.mySwitch.addTarget(self, action: #selector(switChange(paramTarget:)), for: .valueChanged)
//    }
    
//    @objc func switChange(paramTarget: UISwitch) {
//        print("param is = ", paramTarget)
//
//        if self.mySwitch.isOn {
//            print("sw on")
//        } else {
//            print("sw off")
//        }
//    }
    let mySwitchTwo = UISwitch()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.button.frame = CGRect(x: 100, y: 400, width: 200, height: 100)
        self.button.backgroundColor = UIColor.black
        self.button.setTitle("SEND", for: .normal)
        self.button.setTitle("Кнопка нажата", for: .highlighted)
        
        self.view.addSubview(self.button)
        
        self.mySwitchTwo.frame = CGRect.zero
        self.mySwitchTwo.center = self.view.center
        self.view.addSubview(self.mySwitchTwo)
        
        // off color
        self.mySwitchTwo.tintColor = UIColor.white
        // рычажок
        self.mySwitchTwo.thumbTintColor = UIColor.black
        // on color
        self.mySwitchTwo.onTintColor = UIColor.red
        
        self.mySwitchTwo.addTarget(self, action: #selector(changeUserInteraction(target:)), for: .valueChanged)
    }
    
    @objc func changeUserInteraction(target: UISwitch) {
        if target.isOn {
            self.button.isUserInteractionEnabled = false
        } else {
            self.button.isUserInteractionEnabled = true
        }
    }
}
