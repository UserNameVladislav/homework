import Foundation
// 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.
enum Windowstate {
    case open, close
}

enum Trunkvolume { // багаж
    case download(volume: Int)
    case unload(volume: Int)
}

enum Engine { // движок
    case launch, drownout
}
enum Brand: String {
    case BMW = "BMW"
    case PORSHE = "PORSHE"
    case AUDI = "AUDI"
    case Volvo = "Volvo"
    case Reno = "Reno"
    case Mercedec = "Mercedec"
}
enum Type: String {
    case trucks = "Грузовой автомобиль"
    case sport = "спортивный автомобиль автомобиль"
}
class car {
    var transmission: Bool
    var speedMax = 0
    var speedNow = 0
    
    init(speedMax: Int, speedNow: Int, transmission: Bool ) {
        self.speedMax = speedMax
        self.speedNow = speedNow
        self.transmission = transmission
    }
    
    var overspeed = 0
    func speedLimit() {
        if speedNow >= 100 {
            overspeed += 1
            print("Вы привысили скоростной режим в 100 км, \(overspeed) раз.")
        } else {
            print("Скоростной режим в норме.")
        }
    }
}

class trunkcar: car {
    var type: Type = .trucks
    var brand: Brand = .Volvo
    let trunkvolumemax = 20000
    let numberofwheels = 14
    let long = 15
    var trailer: Bool
    var somitrailer: Bool
    var windows: Windowstate = .close
    var engine: Engine = .drownout
    
    
    init(type: Type, brand: Brand, trailer: Bool, somitrailer: Bool, windows: Windowstate, engine: Engine,
         speedMax: Int, speedNow: Int, transmission: Bool  ) {
        self.type = type
        self.brand = brand
        self.trailer = trailer
        self.somitrailer = somitrailer
        self.windows = windows
        self.engine = engine
        super.init(speedMax:speedMax, speedNow:speedNow, transmission:transmission)
    }
    override func speedLimit() {
        if speedNow > 90 {
            overspeed += 1
            print("Вы привысили скоростной режим в 90 км, \(overspeed) раз.")
        } else {
            print("Скоростной режим в норме.")
        }
    }
}

class sportcar: car {
    var type: Type = .sport
    var brand: Brand = .PORSHE
    let trunkvolumemax = 2000
    let numberofwheels = 4
    let long = 5
    var luke: Bool
    var windows: Windowstate = .open
    var engine: Engine = .launch
    
    init(type: Type, brand: Brand, luke: Bool, windows: Windowstate, engine: Engine,
         speedMax: Int, speedNow: Int, transmission: Bool) {
        self.type = type
        self.brand = brand
        self.luke = luke
        self.windows = windows
        self.engine = engine
        super.init(speedMax:speedMax, speedNow:speedNow, transmission:transmission)
    }
    
    override func speedLimit() {
        if speedNow > 120 {
            overspeed += 1
            print("Вы привысили скоростной режим в 120 км, \(overspeed) раз.")
        } else {
            print("Скоростной режим в норме.")
        }
    }
}

var firstCar = car(speedMax: 200, speedNow: 90, transmission: true)
var carPorsh = sportcar(type: .sport, brand: .PORSHE, luke: true, windows: .close, engine: .launch, speedMax: 360, speedNow: 180, transmission: true)
var carAudi = sportcar(type: .sport, brand: .AUDI, luke: false, windows: .close, engine: .launch, speedMax: 320, speedNow: 100, transmission: true)
var carVolvo = trunkcar(type: .trucks, brand: .Volvo, trailer: true, somitrailer: false, windows: .open, engine: .launch, speedMax: 200, speedNow: 90, transmission: true)
var carReno = trunkcar(type: .trucks, brand: .Reno, trailer: false, somitrailer: true, windows: .open, engine: .launch, speedMax: 200, speedNow: 120, transmission: false)

print("""
Характеристики:
Тип авто: \(carPorsh.type)
Бренд: \(carPorsh.brand)
Наличие люка: \(carPorsh.luke)
Статус стекл: \(carPorsh.windows)
Статус двигателя: \(carPorsh.engine)
Максимальная скорость: \(carPorsh.speedMax)
Текущая скорость: \(carPorsh.speedNow)
""")
carPorsh.speedLimit()
carVolvo.speedLimit()
carReno.speedLimit()
carAudi.speedLimit()

