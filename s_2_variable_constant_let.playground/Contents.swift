import Swift

// 변수와 상수


// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름: 타입 = 값   // 정상적
// let 이름:타입=값      // 정상적

// 변수의 선언
// var 이름: 타입 = 값   // 정상적
// var 이름:타입=값      // 정상적

let constant_1: String = "변경 불가능한 상수 let"
let constant_2 = "명시적으로 타입을 쓰지 않은 변경이 불가능한 상수 let"

var variable_1: String = "변경이 가능한 변수 var"
var variable_2 = "명시적으로 타입을 쓰지 않은 변경이 가능한 변수 var"

//constant_1 = "변경 불가능 함" // 오류발생
//constant_2 = "요것도 불가능" // 오류발생

variable_1 = "요로콤 변경"
variable_2 = "요것도 변경"

// 글로벌 변수로는 추후 할당이 불가능
// 상수 선언 후에 나중에 값 할당하기
func letAfterInit()
{
    // 나중에 할당하려고 하는 상수나 변수는 타입을 명시 해야함.
    let sum: Int
    let input1: Int = 100
    let input2: Int = 200
    
    // 선언 후 첫 할당
    sum = input1 + input2
    
    // 첫 할당까진 컴파일에러가 없으나 차후 아랫줄과 같은 경우 에러 발생
    // sum = 123 // 에러 발생
}
letAfterInit()


// 글로벌 변수로는 널어블하게 해야함
var globalMyName: String?

func varAfterInit() {
    // 어떤 변수든 스코프 안에서 차후에 할당 가능
    // 변수도 차후 할당 가능
    var myName: String
    
    // 초기화 되지 않은 상태에서 출력하면 컴파일러가 에러를 표기
    // print(myName) // 에러 발생
    
    myName = "rebirth"
    
    // 변수라 차후 변경 가능
    myName = "재성"
}
varAfterInit()
