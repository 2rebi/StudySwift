import Swift

// 상속
// 스위프트의 상속은 클래스, 프로토콜 등에서 만 가능
// 스위프트는 다중상속을 지원하지 않음

//MARK: - 클래스의 상속과 재정의

//class 이름: 상속받을 클래스 이름 {
// 구현
//}

class Shape {
    var x: Double = 0
    var y: Double = 0

    func info() {
        print("shape position : (\(x), \(y))")
    }
    
    // 재정의 방지
    final func sayKind() {
        print("Shape!")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func staticMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    // final 키워드를 붙이면 재정의가 불가능한 타입 메서드로 변함
    // static 키워드와 final class는 같은 역할을 함
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Circle: Shape {
    var radius: Double = 5
    
    override func info() {
        print("circle position : (\(x), \(y)), radius : \(radius)")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
}

let s = Shape()
let c = Circle()

c.x = 1
c.y = 3
c.radius = 7

s.x = 3
s.y = 7

s.info()
c.info()


Shape.staticMethod()
Shape.classMethod()
Shape.finalClassMethod()

Circle.staticMethod()
Circle.classMethod()
Circle.finalClassMethod()
