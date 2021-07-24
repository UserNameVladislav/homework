import Foundation

enum Windowstate { // Окна
    case open, close
//    mutating func closeWindow() {
//        self = .close
//    }
//    mutating func openeWindow() {
//        self = .open
//    }
    
}
enum Trunkstate { // багаж
    case download, unload
//    mutating func trunked () {
//        self = .download
//    }
//    mutating func trunkedtwo () {
//        self = .unload
//    }
}

enum StartDVS { // движок
    case launch, drownout
//    mutating func start() {
//        self = .launch
//    }
//    mutating func unstart() {
//        self = .drownout
//    }
}

struct SportCarBMW {
    var brand: String
    var year: Int
    var trunkvolume: Double  //  обьем багажника
    var startingengine: StartDVS  // двс запуск
    var window: Windowstate  // окна
    var trunk: Trunkstate {
        willSet {
            if newValue == .download {
                print("Cargo loaded")
            } else {
                print("Cargo uploaded")
            }
        }
    }
}
struct TrunkCarVolvo {
    var brand: String
    var year: Int
    var trunkvolume: Double  //  обьем багажника
    var startingengine: StartDVS  // двс запуск
    var window: Windowstate  // окна
    var trunk: Trunkstate {
        willSet {
            if newValue == .download {
                print("Cargo loaded")
            } else {
                print("Cargo uploaded")
            }
        }
    }
}

var carBMW = SportCarBMW(brand: "BMW", year: 2020, trunkvolume: 2000, startingengine: .launch, window: .open, trunk: .unload)
var carVolvo = TrunkCarVolvo(brand: "Volvo", year: 2019, trunkvolume: 20000, startingengine: .drownout, window: .close, trunk: .download)



