import Swift


//종류
//저장 프로퍼티
//연산 프로퍼티
//인스턴스 프로퍼티
//타입 프로퍼티

//프로퍼티 구조체, 클래스, 열거체 내부에 구현 가능
//열거형 내부에는 연산 프로퍼티만 구현 가능
//연산 프로퍼티는 var로만 선언 가능

//MARK: - 정의

struct Student {
    // 인스턴스 저장 프로퍼티
    var name = ""
    var `class` = "Swift"
    var korAge = 0
    
    // 인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return korAge - 1
        }
        
        set(inputAge) {
            korAge = inputAge + 1
        }
    }
    
    //타입 저장 프로퍼티
    static var typeDesc = "학생"
    
    // 인스턴스 메서드
    //func selfIntroduce() {
    //  print("저는 \(self.class)반 \(name)입니다")
    //}
    
    //읽기전용 인스턴스 연산 프로퍼티
    var selfIntroduce: String {
        get {
            print("call selfIntroduce (readonly property) - instance")
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    
    // 타입 메서드
    //static func selfIntroduce() {
    //  print("학생 타입입니다")
    //}
    
    //읽기전용 타입 연산 프로퍼티
    //읽기전용에서는 get을 생략할 수 있다.
    static var selfIntroduce: String {
        print("call selfIntroduce (readonly type property) - type")
        return "학생 타입입니다"
    }
}


print(Student.selfIntroduce)

var rebirth = Student()
rebirth.korAge = 24
rebirth.name = "jaeseong lee"

print(rebirth.selfIntroduce)

print("한국 나이 \(rebirth.korAge), 미국 나이\(rebirth.westernAge)")

//MARK: - 응용

struct Money {
    var rate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * rate
        }
        
        set {
            dollar = newValue / rate
        }
    }
}


var moneyInPocket = Money()

moneyInPocket.won = 11000

print(moneyInPocket.won)

moneyInPocket.dollar = 5

print(moneyInPocket.won)


//MARK: - 지역변수, 전역변수

//저장 프로퍼티와 연산 프로퍼티 기능
//함수, 메서드, 클로저, 타입 등의 외부에 위치한
//지역/전역 변수에도 모두 사용 가능

var a: Int = 100
var b: Int = 200
//var sum: Int {
//    return a + b
//}
// 왜 에러 나지?? 된다면서요...ㅠㅠ

//클로저
// { () -> Int in
//  return a + b
// }
// 와 같은 형태
var sum = {
    return a + b
}
print(sum())


// 프로퍼티 감시자
//MARK: - 정의

struct InterMoney {
    var rate: Double = 1100 {
        willSet(nv) {
            print("환율이 \(rate)에서 \(nv)으로 변경될 예정입니다.")
        }
        
        didSet(ov) {
            print("환율이 \(ov)에서 \(rate)으로 변경되었습니다.")
        }
    }
    
    var dollar: Double = 0 {
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
        }
    }
    
    var won: Double {
        get {
            return dollar * rate
        }
        
        set {
            dollar = newValue / rate
        }
        
        // 연산 프로퍼티와 동시 사용 불가
//        willSet {
//        }
    }
}


var interPocket = InterMoney()

interPocket.rate = 1000
interPocket.dollar = 10
print(interPocket.won)


var aa = 100 {
    willSet {
        print("aa값이 변경 될 예정입니다. (\(aa) -> \(newValue))")
    }
    
    didSet {
        print("aa값이 변경 되었습니다. (\(oldValue) -> \(aa))")
    }
}


aa = 200
