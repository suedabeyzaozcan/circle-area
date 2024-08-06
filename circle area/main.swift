//
//  main.swift
//  circle area
//
//  Created by Sueda Beyza Özcan on 6.08.2024.
//

import Foundation
class NamedShape {
    var numberOfSides: Int = 0
    var name: String


    init(name: String) {
       self.name = name
    }


    func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides."
    }
}

class Circle: NamedShape {
    var yarıcap: Double
    //Square sınıfı, NamedShape adında bir üst sınıftan türetilmiştir. Bu, NamedShape sınıfının tüm özelliklerini ve metodlarını devralır.

    init(yarıcap: Double, name: String) {
        self.yarıcap = yarıcap
        super.init(name: name)
        numberOfSides = 0
    }
   // init metodu, sideLength ve name parametrelerini alır. self.sideLength = sideLength ifadesi, karenin kenar uzunluğunu ayarlar. super.init(name: name) ifadesi, üst sınıfın başlatıcısını çağırarak name özelliğini ayarlar. numberOfSides = 4 ifadesi, karenin dört kenarı olduğunu belirtir.

    func area() -> Double {
        return 3.14 * (yarıcap * yarıcap)
    }


    override func simpleDescription() -> String {
        return "circle\(yarıcap)."
    }
}
let test = Circle(yarıcap: 4.15, name: "my circle's area")
print(test.area())
print(test.simpleDescription())




