import Swift

var someInt = 0

assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0)
//assert(someInt == 0, "someInt != 0")


func functionWithAssert(age: Int?) {
    assert(age != nil, "age == nil")
    
    assert((age! >= 0 ) && (age! <= 130), "나이값 입력이 잘못되었습니다.")
    print("당신의 나이는 \(age!)세입니다.")
}


functionWithAssert(age: 50)
//functionWithAssert(age: -1)
//functionWithAssert(age: nil)

//MARK: - Early Exit
// guard를 사용하여 잘못된 값의 전달 시
// 특정 실행구문을 빠르게 종료

func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
            print("나이값 입력이 잘못되었습니다")
            return
    }
    
//    guard unwrappedAge < 100 else {
//        return
//    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다.")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}

func someFunction(info: [String:Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}


someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mke"])
someFunction(info: ["name": "rebirth", "age": 10])
