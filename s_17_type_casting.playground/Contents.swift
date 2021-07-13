import Swift

class SomeObject {
    
    func what() {
        print("나는 무엇인가")
    }
}

class Shape : SomeObject {
    var x = 0
    var y = 0

    func printType() {
        print("모양의 하나입니다.")
    }
}

class Circle: Shape {
    var radius = 0
    
    func spin() {
        print("빙글빙글 돕니다.")
    }
}

var what = SomeObject()
var shape = Shape()
var circle = Circle()

//MARK: - 타입 확인
//is를 사용하여 타입을 확인합니다

print(what is SomeObject)
print(what is Shape)
print(what is Circle)

print(shape is SomeObject)
print(shape is Shape)
print(shape is Circle)

print(circle is SomeObject)
print(circle is Shape)
print(circle is Circle)

switch shape {
case is Circle:
    print("원 입니다")
case is SomeObject:
    print("어떠한 것 입니다")
case is Shape:
    print("모양입니다")
default:
    print("아무것도 아닙니다.")
}


switch shape {
case is Circle:
    print("원 입니다")
case is Shape:
    print("모양입니다")
case is SomeObject:
    print("어떠한 것 입니다")
default:
    print("아무것도 아닙니다.")
}

//MARK: - 업 캐스팅
//부모 클래스로 캐스팅
var someCircle = Circle() as SomeObject
var someShape: SomeObject = Shape()
var anyObject: Any = SomeObject()

//MARK: - 다운 캐스팅
//자식 클래슬 캐스팅


//MARK: 조건부 다운 캐스팅
// as?

var optionalCasted: Shape?
optionalCasted = someCircle as? Circle
optionalCasted = someShape as? Circle
optionalCasted = anyObject as? Circle
optionalCasted = anyObject as? Shape

//MARK: 강제 다운 캐스팅


optionalCasted = someCircle as! Circle
//optionalCasted = someShape as! Circle // 런타임 에러
//optionalCasted = anyObject as! Circle // 런타임 에러
//optionalCasted = anyObject as! Shape // 런타임 에러

func doSomething(someObj: SomeObject) {
    switch someObj {
    case is Circle:
        (someObj as! Circle).spin()
    case is Shape:
        (someObj as! Shape).printType()
    case is SomeObject:
        (someObj as! SomeObject).what()
    default:
        print("어떠한 타입도 아닙니다.")
    }
}

doSomething(someObj: someCircle as SomeObject)
doSomething(someObj: someCircle)
doSomething(someObj: someShape)
doSomething(someObj: anyObject as! SomeObject)
