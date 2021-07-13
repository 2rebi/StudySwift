import Swift

//MARK: - 프로퍼티 기본값

// 스위프트의 모든 인스턴스는 초기화와 동시에
// 모든 프로퍼티에 유효한 값이 있어야함

class Circle {
    // 저장 프로퍼티 기본값 모두 할당
    var radius: UInt = 3
    var x: Int = 0
    var y: Int = 0
}

let c = Circle()

c.radius = 5
c.x = 6
c.y = 7

//MARK: - 이니셜라이저

// 프로퍼티 기본값을 지정하기 어려운 경우에는
// 이니셜라이저를 통해
// 인스턴스가 가져야 할 초기값을 전달 가능

class Rectangle {
    var left: Int
    var right: Int
    var top: Int
    var bottom: Int
    var x = 0
    var y = 0
    
    init(left: Int, right: Int, top: Int, bottom: Int) {
        self.left = left
        self.right = right
        self.top = top
        self.bottom = bottom
    }
}


let s = Rectangle(left: 100, right: 200, top: 0, bottom: 100)

//MARK: - 초기값이 필요 하지 않을 때
//옵셔널 사용
class Person {
    var name: String
    var age: Int
    var nickName: String?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String, age: Int, nickName: String) {
        self.init(name: name, age: age)
        self.nickName = nickName
    }
}

let someone = Person(name: "unknown", age: 999)
let rebirth = Person(name: "Jaeseong Lee", age: 24, nickName: "sorry")

//암시적 추출 옵셔널로
//반드시 필요하지만
//당장 초기값을 할당하지 않고자 할 때 사용
class Dog {
    var name: String
    var owner: Person!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인\(owner.name)와 산책을 합니다.")
    }
}

let theDog = Dog(name: "unknownDog")
//theDog.goOut() // 런타임 에러
theDog.owner = someone
theDog.goOut()


//MARK: 실패가능한 이니셜라이즈
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우
// 인스턴스 생성에 실패할 수 있습니다.
// 인스턴스 생성에 실패하면 nil을 반환
// init을 옵셔널로 변환

class Cat {
    var name: String
    var age: Int
    
    init?(name: String, age: Int) {
        if !(0...20).contains(age) {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

let notCat = Cat(name: "theCat", age: 50)
let realCat = Cat(name: "Navi", age: 2)
let roadCat = Cat(name: "", age: 9)

print(notCat)
print(realCat)
print(roadCat)

//MARK: - 디이니셜라이저

// deinit은 클래스의 인스턴스가
// 메모리에서 해제되는 시점에서 호출
// 인스턴스가 해제되는 시점에서 해야할 일을 구현
// 클래스 타입만 가능

class OldPerson {
    var name: String
    var child: Person
    
    init(name: String, child: Person) {
        self.name = name
        self.child = child
    }
    
    deinit {
        print("\(name)가 \(child.name)에게 재산을 상속합니다.")
    }
}

var oldman: OldPerson? = OldPerson(name: "someParent", child: someone)
oldman = nil
