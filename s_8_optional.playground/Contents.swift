import Swift

//옵셔널 자체는 enum + general임

// 기본타입에 뒤에 !, ?로 붙인다
// 또는 var optval: Optional<Int> = nil
// 위와 같이 명시적으로도 표현 가능

//! 는 암시적 옵셔널 이므로 기존에 타입과 연산이 가능

var optVal1: Int! = 100

optVal1 = optVal1 + 100
optVal1 = nil
//optVal = optVal + 50 // 런타임 에러

//? 는 명시적 옵셔널 이므로 기존에 타입과 연산이 불가능

var optVal2: Int? = 100
optVal2 = nil
optVal2 = 100
//optVal2 = optVal2 + 100 // 컴파일 에러

//옵셔널 같은경우 스위치로써 값이 있는지 없는지 체크 가능하다
switch optVal1 {
case .none:
    print("Optional variable 1 is nil")
case .some(let value):
    print("Value is \(value)")
}


switch optVal2 {
case .none:
    print("Optional variable 2 is nil")
case .some(let value):
    print("Value is \(value)")
}


//옵셔널 값 추출

var optStr: String? = "not nil"

if let str = optStr {
    print(str)
} else {
    print("optStr == nil")
}

var myName: String? = "rebirth"

if let str = optStr, let name = myName {
    print("\(str) and \(name)")
}

optStr = nil

if let str = optStr, let name = myName {
    print("\(str) and \(name)")
} else {
    print("nil")
}

//강제 추출 방식
var forceOptStr1: String? = "test str"
print(forceOptStr1!)

//forceOptStr1 = nil // nil을 넣어준 후
//print(forceOptStr1!) // 강제 추출시 런타임 에러

func foo(_ str: String) {
    print(str)
}

var forceOptStr2: String! = nil
//foo(forceOptStr2) // nil 값이므로 런타임 에러 발생
