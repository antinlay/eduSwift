import UIKit

// Delegate

// MARK: Protocol
protocol RouterDelegate {
    var arrayMails: [String] { get set }
    func saveMail(name: String, text: String)
}

protocol UsersProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    var delegate: RouterDelegate { get set }
    
    init(name: String, age: Int, delegate: RouterDelegate)
}

// MARK: Class

class Router: RouterDelegate {
    var arrayMails: [String] = []
    func saveMail(name: String, text: String) {
        arrayMails.append(name)
        arrayMails.append(text)
    }
}

class User: UsersProtocol {
    var name: String
    var age: Int
    
    var delegate: RouterDelegate
    
    func sendMail(name: String, text: String) -> Bool {
        delegate.saveMail(name: name, text: text)
        return true
    }
    
    required init(name: String, age: Int, delegate: RouterDelegate) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}

let routerDelegate = Router()

let user = User(name: "John", age: 33, delegate: routerDelegate)

user.sendMail(name: "Serega", text: "Hello Serega")
user.sendMail(name: "mama", text: "I'm OK!")

routerDelegate.arrayMails
