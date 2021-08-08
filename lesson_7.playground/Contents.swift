import UIKit

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.
enum Error404: Error {
    case insufficientFunds // недостаточно средств
    case notAvailable // нет в наличии
    case invalidSelection
}

struct Description {
    var price: Int
    var amount: Int
    let product: Product
}

struct Product {
    var name: String
}

class Shop {
    var inventory = [
        "Jaket" : Description(price: 25, amount: 1, product: Product(name: "Jaket")),
        "Shorts" : Description(price: 10, amount: 20, product: Product(name: "Shorts")),
        "Shoes" : Description(price: 20, amount: 19, product: Product(name: "Shoes")),
        "Jeans" : Description(price: 20, amount: 5, product: Product(name: "Jeans"))
    ]
    
    var deposit = 0
    func money(name: Int) -> Int {
        
        deposit += name
        return deposit
    }
    
    func sale(buything name: String) -> (Product?, Error404?) {
        guard let item = inventory[name] else {
            return (nil, Error404.invalidSelection)
        }
        guard item.amount > 0 else {
            return (nil, Error404.notAvailable)
        }
        guard item.price <= deposit else {
            return (nil, Error404.insufficientFunds)
        }
        deposit -= item.price
               var newItem = item
               newItem.amount -= 1
               inventory[name] = newItem
               return (newItem.product, nil)
    }
}

let TShop = Shop()
TShop.money(name: 200)
TShop.sale(buything: "Shoes")
TShop.sale(buything: "JAKETS")



