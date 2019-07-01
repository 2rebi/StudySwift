import Swift


//MARK: - 열거형 정의

//enum은 이름은 대문자 카멜
//case는 소문자 카멜로 정의
//case는 그 자체가 고유의 값

//enum 이름 {
// case 이름1
// case 이름2
// case 이름3, 이름4, 이름5
//}

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day = Weekday.mon
day = .tue

print(day)


switch day {
case .mon, .tue, .wed, .thu:
    print("평일")
case .fri:
    print("불금")
case .sat, .sun:
    print("주말")
}


//MARK: 원시값
//C언어 처럼 정수값을 가질 수 있음
//case별로 각각 다른 값을 가져야함
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
//  case mango = 0 // 컴파일 에러
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

enum School: String {
    case elelmentary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")


let apple = Fruit(rawValue: 0)

if let peach = Fruit(rawValue: 2) {
    print("rawValue 2에 해당하는 케이스는 \(peach)입니다")
}


enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여룸")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}


Month.mar.printMessage()

