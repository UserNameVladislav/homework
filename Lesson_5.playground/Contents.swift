import UIKit

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести сами объекты в консоль.
enum dowithcar {
    case opendoor , closedoor
    case startengine , stopengine
}
enum spoiler {
    case ON, OFF
}
enum nitro{
    case ON, OFF
}
enum launch{
    case ON, OFF
}
enum ladenstate {
    case Yes, No
}
enum trailer {
    case Yes, No
}
protocol Car {
    var model: String {get set}
    var color: String {get set}
    var year: Int {get set}
    var maxSpeed: Int {get set}
    var transmisson: Bool {get} // avto mehanic
    var stateWindows: Bool {get set}
    
    func doAction(action: dowithcar)
}
extension Car {
    func startengine()  {
        doAction(action: .startengine)
    }
    func stopengine() {
        doAction(action: .stopengine)
    }
    func opendoor() {
        doAction(action: .opendoor)
    }
    func closedoor() {
        doAction(action: .closedoor)
    }
    
}
class standartcar: Car {
    var model: String = ""
    var color: String = ""
    var year: Int = 0
    var maxSpeed: Int = 0
    var transmisson: Bool
    var stateWindows: Bool
    func doAction(action: dowithcar) {
    }
    init(model: String, color: String, year: Int, maxSpeed: Int, transmisson: Bool, stateWindows: Bool) {
        self.model = model
        self.color = color
        self.year = year
        self.maxSpeed = maxSpeed
        self.transmisson = transmisson
        self.stateWindows = stateWindows
    }
}
class trunkcar: standartcar, CustomStringConvertible {
    var spoiler: spoiler = .ON
    var nitro: nitro = .ON
    var launchcontrol: launch = .ON
    var description: String {
        return "status a spoiler:\(spoiler), status a nitro:\(nitro), launchcontrol:\(launchcontrol)"
    }
}
class sportcar: standartcar, CustomStringConvertible {
    var laden: ladenstate = .Yes
    var trailer: trailer = .Yes
    var description: String {
        return "state of laden:\(laden), state of trailer:\(trailer)"
    }
}
var ferrari = sportcar(model: "Ferrari F430", color: "Red", year: 2021, maxSpeed: 355, transmisson: true, stateWindows: true)
var volvo = trunkcar(model: "volvo E", color: "White", year: 2010, maxSpeed: 190, transmisson: true, stateWindows: false)
volvo.doAction(action: .startengine)
volvo.doAction(action: .closedoor)
ferrari.doAction(action: .startengine)
ferrari.doAction(action: .stopengine)
print(ferrari.description)
print(volvo.description)

