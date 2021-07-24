//
//  main.swift
//  Lesson 3
//
//  Created by Vladislav Alexandrovich on 24.07.21.
//

import Foundation


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





