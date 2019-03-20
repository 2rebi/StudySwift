import Swift


//MARK: - 구조체 정의
// 구조체는 값 타입
//struct 이름 {
// 구현부
//}

//MARK: 프로퍼티 및 메서드

struct Sample {
    var varProp = 100 // 가변 프로퍼티
    let letProp = 150 // 불변 프로퍼티
    
    static var typeProp = 50 // 타입 프로퍼티
    
    //인스턴스 메서드
    func instFunc() {
        print("call inst func")
    }
    
    //타입 메서드
    static func typeFunc() {
        print("call type func")
    }
}

//MARK: 구조체 사용

// 가변 인스턴스
var stVal1 = Sample()

stVal1.varProp = 200
//stVal1.letProp = 250 // 컴파일 에러

// 불변 인스턴스
let stVal2 = Sample()

//stVal2.varProp = 200 // 컴파일 에러
//stVal2.letProp = 250 // 컴파일 에러


Sample.typeProp = 350
Sample.typeFunc()

//MARK: = 학생 구조체

struct Student {
    var name = "unknown"
    var `class` = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}


Student.selfIntroduce()

var rebirth = Student()
rebirth.class = "어디"
rebirth.name = "rebirth"
rebirth.selfIntroduce()

// 불변 인스턴스 이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
let `let` = Student()
//`let`.class = "불변"
//`let`.name = "let"
`let`.selfIntroduce()
