import UIKit

// HUMAN
//struct Human {
//    func sayHello() {
//        print("Hi, I'm Human", terminator: "")
//    }
//}
//
//struct Girl: Human {
//    override func sayHello() {
//        super.sayHello()
//        print("My gender is Female!")
//    }
//}
//
//struct Boy: Human {
//    override func sayHello() {
//        print("My gender is Male!")
//    }
//}
//
//let girl = Girl()
//girl.sayHello()
//
//let boy = Boy()
//boy.sayHello()

// BIRD
//class Bird {
//    var name: String
//    init (name: String) {
//        self.name = name
//    }
//}
//
//var bird = Bird(name: "Swift")
//
//let animals = [bird]
//
//animals[0].name = "Sparrow"
//print(animals[0].name)

// MOVABLE
//protocol Movable {
//    func move()
//}
//
//extension Movable {
//    func move() {
//        print("walk")
//    }
//}
//
//struct Turtle: Movable {
//    func say() {
//        print("urh")
//    }
//
//    func move() {
//        print("crawl")
//    }
//}
//
//let animal: Turtle = Turtle()
//
//animal.move()
//animal.say()

// ACTOR
//class Actor {
//    var name: String
//    mutating func change(name: String) {
//        self.name = name
//    }
//}

//var actor = Actor()
//let imitator = actor
//actor.name = " H G"
//print(imitator.name)


// FRUITS
//var fruits = ["Apple", "Banana"]
//for fruit in fruits {
//    if let fruitIndex = fruits.firstIndex(of: fruit) {
//        fruits.remove(at: fruitIndex)
//    }
//}
//
//if let lastFruit = fruits.popLast() {
//    fruits.insert(lastFruit, at: 1)
//}
//print(fruits)

// Class PERSON
//protocol PersonProtocol: Hashable {
//}
//
//class Person: PersonProtocol {
//    // Добавьте необходимые свойства и методы
//
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        // Реализуйте сравнение двух объектов Person
//        // и верните true, если они равны, и false в противном случае
//        return true
//    }
//
//    func hash(into hasher: inout Hasher) {
//        // Реализуйте хэширование объекта Person
//        // используя свойства, которые определяют его уникальность
//        // например, можно использовать идентификатор или имя
//    }
//}
//
//let phoneBook: [Person: String]

// UIVIEW ANIMATE

//UIView.animate(withDuration: 1.0, animations:
//                titlelabel.alpha
//               }) { (finished) in
//     acceptButton.hidden true
//}

// BANK + BANK
//protocol NameProtocol {
//    var name: String {get set}
//}
//
//class Bank { }
//
//extension Bank: NameProtocol {
//    private struct BankName {
//        static var _name = ""
//    }
//
//    var name: String {
//        get { return BankName._name}
//        set { BankName._name = newValue }
//    }
//}
//
//let firstBank = Bank()
//firstBank.name = "Tinkoff"
//
//let secondBank = Bank()
//firstBank.name = "Sberbank"
//
//print("\(firstBank.name) + \(secondBank.name) = 💖")

// DISPATCH 1
    
//DispatchQueue.global().async {
//    DispatchQueue.main.sync {
//        print("2")
//    }
//    print("3")
//}
//print("1")


// DISPATCH 2

//DispatchQueue.global().async {
//    DispatchQueue.main.async {
//        print("2")
//    }
//    print("3")
//}
//print("1")


// DISPATCH 3
   
//DispatchQueue.global().sync {
//    DispatchQueue.main.async {
//        print("2")
//    }
//    print("3")
//}
//print("1")


// LOG &
//var count: Int = 0
//
//let countClosure = {
//    print(count)
//}
//
//count += 1
//print(count)
//countClosure()

//

//let firstString: String?? = nil
//
//print((firstString ?? "bank") ?? "Sber")
//
//let secondString: String?? = .some (nil)
//
//print((secondString ?? "bank") ?? "Sber")


//

//class Actor {
//    var name: String = "Jim Carrey" {
//
//        didSet {
//            print(name)
//        }
//    }
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//var actor = Actor (name: "Leonardo DiCaprio")
//actor.name = "Dwayne Johnson"
