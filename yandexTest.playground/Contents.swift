import UIKit

//let queue = DispatchQueue(label: "queue", attributes: .concurrent)
//queue.sync {
//print("Naruto")
//}
//queue.sync {
//print("Saske")
//}
//queue.async {
//print("Sakura")
//}
//
//
//struct Person {
//    enum Gender {
//        case male
//        case female
//    }
//
//    let name: String
//    let surname: String
//    let age: Int
//    let gender: Gender
//}
//extension Person: Hashable {
//     1
//    func hash(into hasher: inout Hasher) {
//        let combined = name.hashValue ^ surname.hashValue
//        hasher.combine(combined)
//    }
//
//     2
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//        hasher.combine(surname)
//    }
//    // 3
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(age)
//        hasher.combine(gender)
//    }
//    // 4
//    func hash(into hasher: inout Hasher) {
//        let combined = name.unicodeScalars.map { Int($0.value) }.reduce(0, +) + age
//        hasher.combine(combined)
//    }
//
//    // 5
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(Int.random(in: 0...100))
//    }
//    // ** 6
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name.count)
//        hasher.combine(surname.count)
//        hasher.combine(age)
//    }
//    // 7
//    func hash(into hasher: inout Hasher) {
//        let combined = name.count + surname.count + age
//        hasher.combine(combined)
//    }
//
//}
//Выберите реализацию идеальной хеш-функции. Идеальной хеш-функцией называется такая функция, которая отображает ключ из статического множества (предложенного в примере ниже) во множество целых чисел без коллизий.
//
//Множество:
//let listOfPersons: [Person] = [
//    .init(name: "Paul", surname: "Brown" , age: 23, gender: .male),
//    .init(name: "John", surname: "Williams" , age: 5, gender: .male),
//    .init(name: "Donna", surname: "Anderson", age: 62, gender: .male),
//    .init(name: "Jessica", surname: "Richards", age: 17, gender: .male),
//    .init(name: "Martin", surname: "Scott", age: 33, gender: .male),
//    .init(name: "Scott", surname: "Martin", age: 33, gender: .female),
//    .init(name: "Eva", surname: "Peters", age: 17, gender: .female),
//    .init(name: "Emily", surname: "Gibson", age: 11, gender: .female),
//    .init(name: "Mia", surname: "Jordan", age: 97, gender: .female),
//    .init(name: "Sofia", surname: "Grant", age: 8, gender: .female),
//    .init(name: "Olivia", surname: "Davis", age: 52, gender: .female),
//    .init(name: "Mia", surname: "Jones", age: 83, gender: .female),
//    .init(name: "Olivia", surname: "Davis", age: 24, gender: .female),
//]
//
//var hasher = Hasher()
//
//listOfPersons.forEach { person in
//    person.hash(into: &hasher)
//    print(person.hashValue)
//}
//let n = Int(readLine()!)! // количество приложений
//let appConsumptions = readLine()!.split(separator: " ").map { Int($0)! } // проценты потребления батареи каждым приложением
//
//let totalBatteryConsumption = appConsumptions.reduce(0, +) // общее потребление батареи всеми приложениями
//let batteryLife = 100 / totalBatteryConsumption // количество полных часов работы батареи
//
//print(batteryLife)

//import Foundation

//enum BatteryError: Error {
//    case outOfRange
//    case invalidBatteryConsumption
//}
//
//func calculateBatteryLife() throws {
//    guard let firstString = readLine(), let n = UInt(firstString), n >= 1 && n <= 100000 else {
//        throw BatteryError.outOfRange
//    }
//
//    guard let secondString = readLine() else {
//        throw BatteryError.invalidBatteryConsumption
//    }
//
//    let appConsumptions = secondString.split(separator: " ").compactMap { UInt($0) }
//
//    guard appConsumptions.count == Int(n) else {
//        throw BatteryError.outOfRange
//    }
//
//    guard appConsumptions.allSatisfy({ $0 > 0 && $0 <= 100 }) else {
//        throw BatteryError.invalidBatteryConsumption
//    }
//
//    let totalBatteryConsumption = appConsumptions.reduce(0, +)
//    let batteryLife = 100 / totalBatteryConsumption
//    print(batteryLife)
//}
//
//do {
//    try calculateBatteryLife()
//} catch BatteryError.outOfRange {
//    print("Ошибка: количество элементов или значения вне допустимого диапазона")
//} catch BatteryError.invalidBatteryConsumption {
//    print("Некорректные значения потребления батареи")
//} catch {
//    print("Произошла ошибка: \(error)")
//}

//import Foundation

//enum GooseError: Error {
//    case invalidInput
//    case invalidCountOfParameters
//    case invalidCountOfMessage
//    case invalidCountOfMentions
//    case invalidNickname
//    case invalidMessage
//}
//
//let englishAlphabet = CharacterSet.lowercaseLetters.intersection(CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz"))
//
//func validateNickname(_ nickname: String) -> Bool {
//    let nicknameCharacterSet = CharacterSet(charactersIn: nickname.lowercased())
//    return nicknameCharacterSet.isSubset(of: englishAlphabet)
//}
//
//func validateMessage(_ message: String) -> Bool {
//    let whitespaceCharacterSet = CharacterSet.whitespaces
//
//    let messageCharacterSet = CharacterSet(charactersIn: message.lowercased())
//    return messageCharacterSet.isSubset(of: englishAlphabet.union(whitespaceCharacterSet))
//}
//
//func runGoose() throws {
//    guard let input = readLine() else {
//        throw GooseError.invalidInput
//    }
//    let arrayParameters = input.split(separator: " ").map { UInt($0) }
//
//    guard arrayParameters.count == 2 else {
//        throw GooseError.invalidCountOfParameters
//    }
//    guard let n = arrayParameters[0], n >= 1 && n <= 100000 else {
//        throw GooseError.invalidCountOfMessage
//    } // количество сообщений в чате
//    guard  let k = arrayParameters[1], k >= 0 && k <= 1000000 else {
//        throw GooseError.invalidCountOfMentions
//    } // количество упоминаний "goose" для применения санкций
//
//    var userCount = 0
//    var sanctionedUsers: Set<String> = []
//
//    for _ in 0..<n {
//        guard  let nickname = readLine(), nickname.count <= 20, validateNickname(nickname) else {
//            throw GooseError.invalidNickname
//        } // имя пользователя
//        guard let message = readLine(), message.count <= 100, validateMessage(message) else {
//            throw GooseError.invalidMessage
//        } // сообщение
//
//        let gooseCount = message.split(separator: " ").filter { $0 == "goose" }.count
//        if gooseCount >= k {
//            sanctionedUsers.insert(nickname)
//            userCount += 1
//        }
//    }
//    print(userCount)
//    for user in sanctionedUsers.sorted() {
//        print(user)
//    }
//
//}
//
//do {
//    try runGoose()
//} catch GooseError.invalidInput {
//    print("Некорректные значения количества сообщений и упоминаний")
//} catch GooseError.invalidCountOfParameters {
//    print("Неверное количество параметров")
//} catch GooseError.invalidCountOfMessage {
//    print("Неверное количество сообщений")
//} catch GooseError.invalidCountOfMentions {
//    print("Неверное количество упоминаний")
//} catch GooseError.invalidNickname {
//    print("Неверный никнейм")
//} catch GooseError.invalidMessage {
//    print("Неверное сообщение")
//} catch {
//    print("Произошла ошибка: \(error)")
//}

//import Foundation
//
//enum DeliveryError: Error {
//    case invalidInput
//}
//
//func validateInput(_ input: String) -> Bool {
//    let allowedCharacterSet = CharacterSet(charactersIn: "123")
//    let inputCharacterSet = CharacterSet(charactersIn: input)
//    return inputCharacterSet.isSubset(of: allowedCharacterSet)
//}
//
//func delivery() throws {
//    guard let path = readLine(), path.count <= 100000, validateInput(path) else {
//        throw DeliveryError.invalidInput
//    }
//
//    let countArray = Array(path).count
//    let array = Array(path).enumerated()
//    var side = true
//    var count = 0
//
//    for road in array {
//
//        if (road.element == "1" && side) || (road.element == "2" && !side) {
//                count += 1
//                side.toggle()
//        } else if road.element == "3" {
//                count += 1
//        }
//
//        if road.offset == countArray && side{
//            count += 1
//        }
//
//    }
//    print(count)
//}
//
//do {
//    try delivery()
//} catch DeliveryError.invalidInput {
//    print("ERROR")
//} catch {
//    print("SOME ERROR")
//}

//print(pedestrianCrossings)

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0] // количество экранов
let m = input[1] // количество записей в логах

let screens = readLine()!.split(separator: " ").map { String($0) }
let mainScreen = readLine()! // название главного экрана

var reachableScreens = Set<String>([mainScreen])
var unreachableScreens = Set<String>(screens)

for _ in 0..<m {
    let log = readLine()!.split(separator: " ").map { String($0) }
    let fromScreen = log[0]
    let toScreen = log[1]

    if reachableScreens.contains(fromScreen) {
        reachableScreens.insert(toScreen)
        unreachableScreens.remove(toScreen)
    }
}

let unreachableCount = unreachableScreens.count
print(unreachableCount)
