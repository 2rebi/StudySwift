import Swift

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false

// Int
var someInt: Int = -100
//someInt = 100.1 // 정수타입에 실수타입 그냥 못넣음

// UInt
var someUInt: UInt = 100
// 자료형간의 암묵적 형변환이 이루어지지 않음
//someUInt = someInt // 에러
//someUInt = -100 // 에러
//someInt = someUInt // 에러

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
//someDouble = someFloat // 에러 자료형간의 암묵적 형변환이 이루어지지 않음

// Character
var someCharacter: Character = "A" // 기본 유니코드

// String
var someString: String = "문자열 타입"
someString = someString + " 문자열 붙이기"

// 암묵적 형변환이 엄격함
//someString = someCharacter // 에러


