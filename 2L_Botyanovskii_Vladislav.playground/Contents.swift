import UIKit

// Lesson 1. Написать функцию, которая определяет, четное число или нет.
// Вариант 1.
let number = 201
func difinitionNumber() {
    if number == 0  {
        print("Ваше число 0! Оно натуральное!")
    }
    else if number % 2 == 0 {
        print("Ваше число \(number), оно четное!")
    }
    else {
        print("Ваше число \(number), оно не четное!")
    }
}
difinitionNumber()
// Вариант 2.
 
// Lesson 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
// Вариант 1.
let x = 3
func divisionWithoutRemainded(){
    if x % 3 == 0 {
        print("Ваше число делится на 3 без остатка!")
    }
    else {
        print("Ваше число делится на 3 с остатком!")
    }
}

divisionWithoutRemainded()
// Вариант 2.

// Lesson 3. Создать возрастающий массив из 100 чисел.

// Вариант 1.
var array = Array(1...100)

// Вариант 2. Мой вариант, 1 Вариант проще, а этот просто в голову пришел)
/* var array:[Int] = []
for i in 0...99 {
    array.append(i+1)
    
}
print(array)
*/
// Lesson 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
// Вариант 1. Старался сделать без метода Filter!
var array1:[Int] = []
for i in array {
    if  i % 2 != 0 && i % 3 != 0{
        array1.append(i)
    }
}
array = array1
print(array)

// Вариант 2. В 2ух вариантах.

let array2 = array.filter{ i in i % 2 != 0 && i % 3 != 0}
array = array2

let array3 = array.filter{ $0 % 2 != 0 && $0 % 3 != 0}
array = array3
print(array)



 // Вариант 2. к варианту 2 предыдущему
 
var array4:[Int] = []
for i in 1...100 {
    if i % 2 != 0 && i % 3 != 0 {
    array4.append(i)
    }
    else {
        continue
    }
}
array = array4
print(array)

// lesson 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
// Вариант 1. Я не пробывал на 50 т.к. боюсь что комп не вытянет.

var fib1 = 1
var fib2 = 0
func fibonacci() {
for i in 1...50 {
    var x = fib1
    fib1 = fib2 + fib1
    fib2 = x
   print(x)
}
}
 
fibonacci()


/* lesson 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

    a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
    b. Пусть переменная p изначально равна двум — первому простому числу.
    c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
    d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
    e. Повторять шаги c и d, пока возможно.
 */
// не успеваю доделать пункты а б с д и е (и не понял по поводу зачеркивания) так можно вообще?) я писал вроде)
var array6:[Int] = []
for n in 2...100 {
    if n <= 2 || n <= 3{
        array6.append(n)
    }
    else if n >= 5 && n <= 5 {
        array6.append(n)
    }
    else if n % 5 == 0 && n/5 != 1 || n % 2 == 0 && n/2 != 1 || n % 3 == 0 && n/3 != 1 {
    }
    else {
        array6.append(n)
    }
}
print(array6)

