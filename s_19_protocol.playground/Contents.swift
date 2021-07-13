import Swift


//MARK: - 정의 문법

//protocol 프로토콜 이름 {
// 정의
//}

protocol Attackable {
    //프로퍼티 요구
    //프로퍼티 요구는 항상 var 키워드를 사용합니다
    // get은 읽기만 가능해도 상관 없다는 뜻이며
    // get과 set을 모두 명시하면
    // 읽기 쓰기 모두 가능한 프로퍼티여야 합니다
    var damage: Int { get set }
    var attackScript: String { get }
    
    // 메서드 요구
    func attack()
    
    // 이니셜라이저 요구
    init(damage: Int, attackScript: String)
}

//MARK: - 프로토콜 채택 및 준수

// Enemy 구조체는 Attackable 프로토콜을 채택했습니다
struct Enemy: Attackable {
    var damage: Int
    let attackScript: String
    
    func attack() {
        print("\(attackScript) (SYSTEM:\(damage)의 데미지를 가했습니다)")
    }
    
    init(damage: Int, attackScript: String) {
        self.damage = damage
        self.attackScript = attackScript
    }
}

//MARK: - 프로토콜 상속

//protocol 프로토콜 이름: 부모 프로토콜 이름 목록 {
// 정의
//}

protocol Readable {
    func read()
}

protocol Writable {
    func write()
}

protocol ReadSpeakable : Readable {
    func speak()
}

protocol ReadWriteSpeakable : Readable, Writable {
    func speak()
}

struct SomeSpeaker : ReadWriteSpeakable {
    func speak() {
        print("말하기")
    }
    
    func read() {
        print("읽기")
    }
    
    func write() {
        print("쓰기")
    }
}


//MARK: 클래스 상속과 프로토콜

// 클래스에서 상속은
//class 클래스 이름 : 슈퍼클래스, 프로토콜1, 프로토콜2 {
//구현
//}
