import Swift

//컬렉션 타입
//Array, Dictionary, Set

//Array - 순서가 있는 리스트 컬렉션(List, Vector(c++ stl), ArrayList(java), LinkedList)
//Dictionary - 키와 값의 쌍으로 이루어진 컬렉션(Map, HashMap(java), c#은 키워드 동일)
//Set - 순서가 없고, 값이 유일한 컬렉션 중복 값을 배제

// MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
// 뒤에 값을 넣기
integers.append(1)
integers.append(100)
//integers.append(100.1) // 에러

// 값 존재 확인
integers.contains(100)
integers.contains(99)

// 해당 index의 값을 삭제
integers.remove(at: 0)
// 마지막 값을 삭제
integers.removeLast()
// 전부 삭제
integers.removeAll()

// 값 갯수 확인
integers.count

//removeAll로 인해 값이 삭제 되었기 때문에
//integers[0] // 에러

// Array<type>와 [type]은 동일한 표현
// 빈 Double Array 생성
var doubles: [Double] = Array<Double>()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
//var characters: [Character] = [] 쌉가능
var characters = [Character]()

// 미리 값을 입력 가능
var integers2 = [1,2,3,4,5]
integers2.removeAll() //삭제도 가능

// let을 사용하여 Array를 선언하면 불변의 Array
let immutableArray = [1,2,3]

// 불변의 배열이므로 넣는것도 불가능
//immutableArray.append(4)
//immutableArray.removeAll()

//MARK: - Dictionary

// Key가 String 타입이고 Value가 Any인 빈 딕셔너리 생성
//var anyDictionary: Dictionary<String, Any> = [String: Any]() // 정상
var anyDictionary = [String: Any]()

anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "change"
anyDictionary

// 유사한 표현
anyDictionary.removeValue(forKey: "anotherKey") // 값 삭제
anyDictionary["someKey"] = nil // 값 삭제 // 널어블이면 아닐듯

anyDictionary

let emptyLetDic: [String:String] = [:]
let initLetDic = ["name":"rebirth", "gender":"male"]


// let 키워드 이므로 값 변동 불가
//emptyLetDic["key"] = "value"
// 키에 대한 값이 있을수도 있고 없을수도 있기때문에
//let someValue: String = initLetDic["name"] // 에러 // 옵셔널(널어블)로 가능

var initVarDic = ["name":"asdf", "gender":"unknown"]

//initVarDic[1] = 1 //에러 // 초기화 당시 키와 값이 둘다 문자열로 구성되어 있기 때문이다.

//var initVarDic2 = [1:"one", "name":"rebirth", "age":13] //에러 // 값의 대한 명시가 필요

//MARK: - Set

// 빈 Int Set 생성

var intSet: Set<Int> = Set<Int>()

intSet.insert(1)
intSet.insert(100)
intSet.insert(99)
intSet.insert(99)
intSet.insert(99)
intSet.insert(99)
intSet.insert(99)

intSet
intSet.contains(1)
intSet.contains(2)

intSet.remove(100)
intSet.removeFirst()

intSet.count


let letSetA: Set<Int> = [1,2,3,4,5]
let letSetB: Set<Int> = [3,4,5,6,7]

let letUnionSet = letSetA.union(letSetB)

let sortedUnion = letUnionSet.sorted()

let intersection = letSetA.intersection(letSetB)

let subtracting = letSetA.subtracting(letSetB)
