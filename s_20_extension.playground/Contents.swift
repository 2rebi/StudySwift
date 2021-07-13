import UIKit

//MARK: - 정의

//extension 확장할 이름 {
// 구현
//}

//extension 확장할 이름: 프로토콜1, 프로토콜2, 프로토콜3 {
// 구현
//}

//MARK: - 구현

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven)
print(1.isOdd)
print(2.isEven)
print(2.isOdd)

var number = 3
print(number.isEven)
print(number.isOdd)

number = 2
print(number.isEven)
print(number.isOdd)


extension Int {
    func multi(by n: Int) -> Int {
        return self * n
    }
}

print(3.multi(by: 2))
print(4.multi(by: 5))

number = 3
print(number.multi(by: 2))
print(number.multi(by: 3))

extension String {
    init(intTypeNumber: Int) {
        self = "\(intTypeNumber)"
    }
    
    init(doubleTypeNumber: Double) {
        self = "\(doubleTypeNumber)"
    }
}


let stringFromInt = String(intTypeNumber: 100)
let stringFromDouble = String(doubleTypeNumber: 100.1)
