import Swift

// 문자열 보간법, 클래스 이름 짓기, 콘솔로그

let age: Int = 10


"안녕하세요! 저는 \(age)살입니다."
// == "안녕하세요! 저는 10살입니다"

"안녕하세요! 저는\(age + 5)살입니다."
// == "안녕하세요! 저는 15살입니다"

print("안녕하세요! 저는\(age + 5)살입니다.")

print("\n############################\n")

class Person {
    var name: String = "rebirth"
    var age: Int = 24
}

let rebirth: Person = Person()

print(rebirth)

print("\n############################\n")

dump(rebirth)
