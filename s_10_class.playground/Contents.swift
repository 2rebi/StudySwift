import Swift

//MARK: - 클래스 정의
// 클래스는 참조 타입
//class 이름 {
// 구현부
//}


//MARK: 프로퍼티 및 메서드

class Sample {
    var varProp = 100 // 가변 프로퍼티
    let letProp = 150 // 불변 프로퍼티
    
    static var typeProp = 50 // 타입 프로퍼티
    
    //인스턴스 메서드
    func instFunc() {
        print("call inst func")
    }
    
    //타입 메서드
    //재정의 불가 타입 메서드 - static
    static func staticFunc() {
        print("call type func - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    static func classFunc() {
        print("call type func - class")
    }
}

var varSample = Sample()
varSample.varProp = 150
varSample = Sample()

let letSample = Sample()
letSample.varProp = 250
//letSample = varSample // 컴파일 에러


Sample.typeProp = 350
Sample.classFunc()
Sample.staticFunc()

//MARK: = 학생 클래스

class Student {
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
`let`.class = "불변"
`let`.name = "let"
`let`.selfIntroduce()
