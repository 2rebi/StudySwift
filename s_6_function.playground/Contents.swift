import Swift

//MARK: - 함수의 선언

//MARK: 함수선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) -> 반환타입 {
//  구현부
//  return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}


//MARK: 반환 값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) -> Void {
//  구현부
//  return
//}
func foo(fooVar: String) -> Void {
    print(fooVar)
}

//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) {
//  구현부
//  return
//}
func bar(barVar: String) {
    print(barVar)
}

//MARK: 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//  구현부
//  return 반환값
//}
func maxIntVal() -> Int {
    return Int.max
}

//MARK: 매개변수와 반화값이 없는 함수
//func 함수이름() -> Void {
//  구현부
//  return
//}
func sayYo() -> Void { print("Yo") }

//func 함수이름() {
//  구현부
//  return
//}
func sayHo() { print("Ho") }


//MARK: - 함수의 호출

sum(a: 3, b: 5) // 8

foo(fooVar: "call foo")

bar(barVar: "call bar")

maxIntVal()

sayYo()

sayHo()


//MARK: - 매개변수 기본값
//func 함수이름(이름1: 타입1, 이름2: 타입2 = 기본값) -> 반환타입 {
//  구현부
//  return 반환값
//}


func greeting(friend: String, me: String = "rebirth") {
    print("Hello \(friend)~ I'm \(me)")
}

greeting(friend: "jaeseong")
greeting(friend: "jaeseong", me: "rebirthLee")


//MARK: - 전달인자 레이블

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 압장에서 표현하고자 할 때 사용합니다
//func 함수이름(레이블 이름1: 타입1, 레이블 이름2: 타입2) -> 반환타입 {
//  구현부
//  return 반환값
//}

func greeting(you friend: String,itme me: String = "rebirth") {
//    print("Yo my friend hello \(you)~ I'm \(itme)") // 에러 // 레이블로 사용 불가
    print("Yo my friend hello \(friend)~ I'm \(me)")
}

// 함수 호출시에는 레이블을 사용해야함.
greeting(you: "seongjae", itme: "Lee Rebirth")

//MARK: - 가변 매개변수

// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다
// 가변 매개변수는 함수당 하나만 가질 수 있음

//func 함수이름(이름1: 타입1, 이름2: 타입2...) -> 반환타입 {
//  구현부
//  return 반환값
//}


func attackEnemies(me: String, enemies: String...) -> String {
    return "\(me) attack \(enemies)"
}

print(attackEnemies(me: "rebirth", enemies: "hello", "world", "swift"))
print(attackEnemies(me: "rebirth"))


//MARK: = 데이터 타입으로서 함수

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
// 스위프트의 함수는 일급객체이므로 변수, 상수, 등에 저장이 가능하고
// 매개변수를 통해 전달이 가능

//MARK: 함수의 타입표현
// 반환타입 생략 불가
// (타입1, 타입2) -> 반환타입

var someFunc: (String, String) -> Void = greeting(you:itme:) // 레이블까지 명시를 해주어야함
someFunc("someone", "me")

someFunc = greeting(friend:me:)
someFunc("cat", "dog")


func runAnotherFunc(runFunc: (String, String) -> Void) {
    runFunc("mouse", "cat")
}


runAnotherFunc(runFunc: greeting(you:itme:))
runAnotherFunc(runFunc: someFunc)
