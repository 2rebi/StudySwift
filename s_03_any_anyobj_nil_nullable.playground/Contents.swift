import Swift

// Any, AnyObject, nil
// Any - Swift의 모든 타입을 지칭
// AnyObject - Switft의 모든 클래스 타입을 지칭
// nil - 없음을 의미하는 키워드 (null)


//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입이든 수용"
someAny = 123.12

// Any 타입이므로 에러가 발생
//let someDouble: Double = someAny


//MARK: - AnyObject
class SomeClass {}

var someAnyObject: AnyObject = SomeClass()
//someAnyObject = 123.12 // 프라이머리 타입이므로 들어가지 않음

//MARK: - nil
//Any와 AnyObject자체는 Nullable한 타입이 아니므로 불가능
//someAny = nil
//someAnyObject = nil
