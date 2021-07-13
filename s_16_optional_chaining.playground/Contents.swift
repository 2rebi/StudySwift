import Swift


class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let rebirth: Person? = Person(name: "rebirth")
let apart: Apartment? = Apartment(dong: "201", ho: "206")
let someone: Person? = Person(name: "unknown")


func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("경비원 직업 \(guardJob)")
                } else {
                    print("경비원 직업이 없습니다.")
                }
            }
        }
    }
}

guardJob(owner: rebirth)


func guardJobWithOptChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("경비원 직업 \(guardJob)")
    } else {
        print("경비원 직업이 없습니다.")
    }
}

guardJobWithOptChaining(owner: rebirth)

rebirth?.home?.guard?.job
rebirth?.home = apart

rebirth?.home

rebirth?.home?.guard

rebirth?.home?.guard = someone

rebirth?.home?.guard

rebirth?.home?.guard?.name
rebirth?.home?.guard?.job

rebirth?.home?.guard?.job = "경비원"


// nil 병합 연산자
print(rebirth?.home?.guard?.job ?? "알 수 없는 직업")
rebirth?.home?.guard?.job = nil
print(rebirth?.home?.guard?.job ?? "알 수 없는 직업")
