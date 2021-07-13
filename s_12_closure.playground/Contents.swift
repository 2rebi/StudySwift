import Swift


//코드의 블럭
//변수, 상수 등으로 저장, 전달인자로 전달이 가능
//함수 : 이름이 있는 클로저

//MARK: - 정의

//{ (매개변수 목록) -> 반환타입 in
//  실행코드
//}

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}


var sum = { (a: Int, b: Int) -> Int in
    return a + b
}

print(sum(1, 2))

// 함수는 클로저의 일종
// sum 변수에는 함수도 할당 가능

sum = sumFunction(a:b:)

print(sum(3,5))


let add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract = { (a: Int, b: Int) -> Int in
    return a - b
}


let divide = { (a: Int, b: Int) -> Int in
    return a / b
}


func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

print("calculate(a: 30, b: 10, method: add) : \(calculate(a: 30, b: 10, method: add))")
print("calculate(a: 30, b: 10, method: substract) : \(calculate(a: 30, b: 10, method: substract))")
print("calculate(a: 30, b: 10, method: divide) : \(calculate(a: 30, b: 10, method: divide))")
print(calculate(a: 30, b: 10, method: { (lh: Int, rh: Int) -> Int in
    return lh * rh
}))


//MARK: - 후행 클로저
// 클로저가 함수의 마지막 전달인자일때
// 마지막 매개변수 이름을 생략한 후
// 함수 소괄호 외부에 클로저를 구현 가능

print(calculate(a: 10, b: 15) { (lh: Int, rh: Int) -> Int in
    return lh + rh + 10
})

//MARK: - 반환타입 생략
print(calculate(a: 20, b: 10, method: { (lh: Int, rh: Int) in
    return lh * rh
}))
print(calculate(a: 10, b: 15) { (lh: Int, rh: Int) in
    return lh + rh + 20
})

//MARK: - 단축 인자이름
// 매개변수 이름이 불필요하다면 단축인자 이름을 활용 할용할 수 있다.
// 단축 인자이름은 클로저의 매개변수 순서대로 $0, $1, $2 처럼 표현합니다.

print(calculate(a: 10, b: 10, method: {
    return $0 * $1
}))
print(calculate(a: 10, b: 15) {
    return $0 + $1 + 30
})


//MARK: - 암시적 반환 표현
// 클로저 반환 값이 있다면
// 클로저 마지막 줄의 결과를 암시적으로 반환값 취급한다.

print(calculate(a: 15, b: 10, method: {
    $0 * $1
}))
print(calculate(a: 10, b: 15) { $0 + $1 + 5 })

var ten = {
    10
}

print(ten())
