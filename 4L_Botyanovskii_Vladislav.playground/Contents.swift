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
    let transmission: Bool
    var speedMax = 0
    var speedNow = 0
    
    init(speedMax: Int, speedNow: Int, transmission: Bool ) {
        self.speedMax = speedMax
        self.speedNow = speedNow
        self.transmission = transmission
    }
    
    var overspeed = 0
    func speedLimit() {
        if speedNow <= 120 {
            overspeed += 1
            print("Вы привысили скоростной режим \(overspeed) раз.")
        } else {
            print("Скоростной режим в норме.")
        }
    }
}

class trunkcar: car {
    let type: Type = .trucks
    let brand: Brand = .Volvo
    let trunkvolumemax = 20000
    let numberofwheels = 14
    let long = 15
    let trailer = true
    let somitrailer = false
    var windows: Windowstate = .close
    var engine: Engine = .drownout
    
    ov
}

class sportcar: car {
    let type: Type = .sport
    let brand: Brand = .PORSHE
    let trunkvolumemax = 2000
    let numberofwheels = 4
    let long = 5
    let luke = true
    var windows: Windowstate = .open
    var engine: Engine = .launch
    
        func startDVS() -> Int{
        var start = 0
        if engine == .launch {
            start += 1
        }
        return start
    }
    
    
}



