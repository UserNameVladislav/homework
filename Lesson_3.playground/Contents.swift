import Foundation

enum Windowstate {
    case open, close
}

enum Trunkvolume { // багаж
    case download(volume: Int)
    case unload(volume: Int)
}

enum StartDVS { // движок
    case launch, drownout
}
enum Brand: String {
    case BMW = "BMW"
    case PORSHE = "PORSHE"
    case AUDI = "AUDI"
}
enum Type: String {
    case trucks = "Грузовой автомобиль"
    case acar = "Легковой автомобиль"
}

struct SportCarBMW {
    let brand: Brand = .BMW
    let year = "2019"
    let color: String
    let trunkvolumemax = 200  //  обьем багажника
    var trunkvolume: Int
    var startingengine: Bool  // двс запуск
    var windows: Bool  // окна
    
    init(color: String, trunkvolume: Int, startingengine: Bool, windows: Bool ) {
        self.color = color
        self.trunkvolume = trunkvolume
        self.startingengine = startingengine
        self.windows = windows
    }
    
    mutating func uploadOrUnload(action: Trunkvolume) {
        switch action {
        case let .download(volume):
            guard trunkvolume + volume < trunkvolumemax else {
                print("в багажнике осталось еще место \(trunkvolumemax - volume)ед.")
                return
            }
            print("в багажнике осталось место")
            trunkvolume += volume
        case let .unload(volume):
            guard trunkvolume - volume >= 0 else {
                print(" = \(trunkvolume - volume)")
                return
            }
            trunkvolume -= volume
            print("багажник разгружен")
        }
    }
    mutating func DVS(action: StartDVS) {
        switch action {
        case .launch:
            startingengine = true
            print("Двигатель запущен")
        default:
            print("Двигатель не запущен")
        }
    }
    mutating func closeWindows(action: Windowstate) {
        switch action {
        case .open:
            windows = true
            print("Окна открыты")
        case .close:
            windows = false
            print("Окна закрыты")
        }
    }
}

struct Volvo {
    var type: Type = .trucks
    let model = "Volvo FH"
    let year = "2019"
    let color: String
    let trunkvolumemax = 2000  //  обьем багажника
    var trunkvolume: Int
    var startingengine: Bool  // двс запуск
    var windows: Bool  // окна
    
    mutating func uploadOrUnload(action: Trunkvolume) {
        switch action {
        case let .download(volume):
            guard trunkvolume + volume < trunkvolumemax else {
                print("в багажнике осталось еще место \(trunkvolumemax - volume)ед.")
                return
            }
            print("в багажнике осталось место")
            trunkvolume += volume
        case let .unload(volume):
            guard trunkvolume - volume >= 0 else {
                print(" = \(trunkvolume - volume)")
                return
            }
            trunkvolume -= volume
            print("багажник разгружен")
        }
    }
    mutating func DVS(action: StartDVS) {
        switch action {
        case .launch:
            startingengine = true
            print("Двигатель запущен")
        default:
            print("Двигатель не запущен")
        }
    }
    mutating func closeWindows(action: Windowstate) {
        switch action {
        case .open:
            windows = true
            print("Окна открыты")
        case .close:
            windows = false
            print("Окна закрыты")
        }
    }
}


var carBMW = SportCarBMW(color: "Black", trunkvolume: 200, startingengine: true, windows: true)

print(SportCarBMW.self)
carBMW.DVS(action: .launch)
carBMW.closeWindows(action: .open)
carBMW.uploadOrUnload(action: .download(volume: 20))
print(carBMW)

var carVolvo = Volvo(color: "White", trunkvolume: 500, startingengine: false, windows: false)
print(Volvo.self)
carVolvo.DVS(action: .drownout)
carVolvo.closeWindows(action: .close)
carVolvo.uploadOrUnload(action: .download(volume: 500))
print(carVolvo)



