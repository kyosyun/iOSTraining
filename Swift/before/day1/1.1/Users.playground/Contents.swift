//: Playground - noun: a place where people can play

let dict:[String : [[String : Any?]]] = [
    "users":[
        ["name": "Dr. Emett Brown",
         "gender" : 1,
         "era": 1985,
         "age": 65,
         "visits": [1885, 1955, 185, 2015]
        ],
        ["name": "Marty McFly",
         "gender" : 1,
         "era": 1985,
         "age": 17,
         "visits": [1885, 1955, 1985, 2015]
        ],
        ["name": "Lorraine Baines",
         "gender" : 0,
         "era": 1955,
         "age": 18,
         "visits": nil
        ]
    ]
]

// User Classにフィールドの追加を行う
// User Classのコンストラクターの作成を行う
// User Classのインスタンスの生成を行う


enum Gender: Int {
    case man
    case female
}

class User: CustomStringConvertible{
    let name: String
    var gender: Gender
    var era: Int
    var age: Int
    var visits: [Int]?
    
    var description: String {
        return "\n User:"
            + "\n name = \(self.name)"
            + "\n gender = \(gender)"
            + "\n era = \(era)"
            + "\n age = \(age)"
            + "\n visits = \(visits) \n"
    }
    
    init?(dict: [String : Any?]) {
        guard
            let name = dict["name"] as? String,
            let rawGender = dict["gender"] as? Int,
            let gender = Gender(rawValue: rawGender),
            let era = dict["era"] as? Int,
            let age = dict["age"] as? Int
            //            let visits = dict["visits"] as? [Int]
            else{
                print("guardで弾かれた")
                return nil
        }
        print("guardで弾かれていない")
        self.name = name
        self.gender = gender
        self.era = era
        self.age = age
        self.visits = dict["visits"] as? [Int]
    }
}

let users: [User] = (dict["users"] ?? []).flatMap({value in
    print("ループ：\(value)")
    return User(dict: value)
})

print(users)

