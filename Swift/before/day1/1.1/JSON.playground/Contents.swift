//: Playground - noun: a place where people can play

//{
//    "users" : [
//    {
//    name : "Dr. Emmett Brown",
//    gender : 1,
//    era : 1985,
//    age : 65,
//    visits: [
//    1885, 1955, 1985, 2015
//    ]
//    },
//    {
//    name : "Marty McFly",
//    gender : 1,
//    era : 1985,
//    age : 17,
//    visits: [
//    1885, 1955, 1985, 2015
//    ]
//    },
//    {
//    name : "Lorraine Baines",
//    gender : 0,
//    era : 1955,
//    age : 18,
//    visits: null
//    }
//    ]
//}

//構造化する
//user を構造化する
//user を束ねる

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

print("hello")
