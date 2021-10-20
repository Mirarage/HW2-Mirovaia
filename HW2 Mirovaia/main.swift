//
//  main.swift
//  HW2 Mirovaia
//
//  Created by Christine Mirovaia on 18.10.21.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет.

let array = [5,12,7,32,47,89,88]

func checkEven(_ v: Int) -> Bool {
    return v%2 == 0
}

for value in array {
    if (checkEven(value)) {
        print("\(value) четное")
    } else {
        print("\(value) нечетное")
    }
}
print("\n")

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

for value in array {
    if value%3 == 0 {
        print ("\(value) делится на 3 без остатка")
    } else {
        print ("\(value) делится на 3 с остатком")
    }
}
print("\n")

//3. Создать возрастающий массив из 100 чисел.

var oneHundred: Array<Int> = []

for i in 1...100 {
    oneHundred.append(i)
}

print("Возрастающий массив \(oneHundred)")
print("\n")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var oneHundredMod = oneHundred.enumerated().reversed()
for (position, element) in oneHundredMod {
    if element%2 == 0 || element%3 != 0 {
        oneHundred.remove(at: position)
    }
}
print("Итоговый массив \(oneHundred) \n")

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonacciArray(_ n: Int) -> [Int] {
    var fibonacci: [Int] = [0, 1]
    for v in (2...n) {
        let nextFib = fibonacci[v-1] + fibonacci[v-2]
        fibonacci.append(nextFib)
    }
    return fibonacci
}
print("Ряд Фибоначчи \(fibonacciArray(50))\n")



