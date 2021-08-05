import UIKit

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

class Person {
    var age: Int = 0
}

class Queue<T: Person>{
    private var array: [T]
    
    init(array: [T]) {
        self.array = array
    }
    func filter(array: [T], predicate: (T) -> Bool ) -> [T] {
        var tmpArray = [T]()
        for element in array {
            if predicate(element) {
                tmpArray.append(element)
            }
        }
        return tmpArray
    }
    
    func filter2(_ clouser: (T) -> Bool
    ) ->  [T] {
       return array.filter(clouser)
    }
    
    func map(_ clouser: (T)) -> [T] {
        return array.map{$0}
    }
    subscript(indices: UInt ...) -> Double {
           var weight = 0.0
           for index in indices where index < self.array.count {
               weight += self.array[Int(index)].weight
           }
           return weight
       }
    
}



