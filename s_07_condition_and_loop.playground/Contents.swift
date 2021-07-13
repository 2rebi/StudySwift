import Swift

//기본 문법

let val = 100
// MARK: - if-else

//if condition {
// somecode
//} else if condition {
// somecode
//} else {
// somecode
//}

if val < 100 {
    print("100 미만")
} else if val > 100 {
    print("100 초과")
} else {
    print("100")
}

//MARK: - switch
//정수 외에도 기본 타입 사용가능

//switch value {
//case pattern:
//  somecode
//default:
//  somecode
//}

//범위 연산자 활용
switch val {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("101 ~ Int.max")
default:
    print("unknown")
}

switch "rebirth" {
case "rebirth":
    print("rebirth")
case "you","me":
    print("our")
//case "you":
//    print("you")
//case "me":
//    print("me")
default:
    print("unknown string")
}


//MARK: - for-in
//for item in items {
// code
//}

var intVals = [1,2,3]
let dicVals = ["Ascii_A":65, "Ascii_a":97, "Ascii_{":123]

for intVal in intVals {
    print(intVal)
}


for (ascii, asciiVal) in dicVals {
    print("\(ascii) : \(asciiVal)")
}


//MARK: - while
// while condition {
// code
//}
while intVals.count > 1 {
    intVals.removeLast()
}


//MARK: - repeat-while

//repeat {
// code
//} while condition

repeat {
    intVals.removeLast()
} while intVals.count > 0
