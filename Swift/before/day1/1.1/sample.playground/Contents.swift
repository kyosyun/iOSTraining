let h: String? = "H"
let ell = "ell"
let o: String? = "o"
var world: String! = nil
world = " world!"

//let helloWorld: String
let helloWorld: String = "Hello World!"
//print(helloWorld)
print(helloWorld)

var value:Int = 2

print(value)


// Int型の変数xに3を代入してください
var x:Int = 3

// 変数xに2を足して、変数xを上書きしてください
x += 2

// 変数xをprintしてください
print (x)

let maxValue: Int = Int.max
let maxValue16: Int16 = Int16.max
let minValue16: Int16 = Int16.min
let maxValue32: Int32 = Int32.max
let minValue32: Int32 = Int32.min
let maxValue64: Int64 = Int64.max
let minValue64: Int64 = Int64.min

print("int: \(maxValue)")
print("int16: " + String(minValue16) + "~\(maxValue16)" )
print(maxValue32)
print(maxValue64)


print(type(of: 10))
print(type(of: -10))
print(type(of: 10.0))
print(type(of: -10.0))

let maxVal16: Int16 = .max
let maxVal32: Int32 = .max
let minVal64: Int64 = .min
print(maxVal16)
print(maxVal32)
print(minVal64)

var array1: [String] = [String]()
array1.append("iPhone")
array1.append("iPhoneSE")

print(array1[0])

let array2: [String] = ["iPhone7","iPhone8"]
print(array2[0])

var optionalString: Optional<String> = nil
var optionalString2: String? = nil
var optionalString3: String? = nil
optionalString = "Apple"
optionalString2 = "Orange"
print(optionalString)
print(optionalString2)
print(optionalString3)
print(optionalString3 ?? "unwrap")

if let v = optionalString{
    print(v)
}

// ImplixitlyUnwrappedOptional型
var unWrappedOptional1: ImplicitlyUnwrappedOptional<String> = nil
var unWrappedOptional2: String! = nil

unWrappedOptional1 = "apple"
unWrappedOptional2 = "orange"

print(unWrappedOptional1)
print(unWrappedOptional2)

print(type(of: optionalString))
print(type(of: unWrappedOptional1))
print(type(of: unWrappedOptional2))


//メソッド宣言　戻り値無し
func helloAction(name: String) -> String{
    print("\(name)さん、こんにちは!")
    return "String"
}
print(helloAction(name: "飯沼"))

//メソッド宣言　戻り値有り
func helloActionWithReturnValue(name: String){
    print("\(name)さん、こんにちは!")
}
print(helloActionWithReturnValue(name: "今西"))

//メソッド宣言 引数に別名付き宣言
func helloActionWithAlias (familyName name: String){
    print("\(name)さん、こんにちは！！")
}

helloActionWithAlias(familyName: "iinum")
helloActionWithAlias(familyName: "iinum2")

//メソッド宣言　引数名の指定なし
func helloActionWithNoAliasName(_ name: String){
    print("\(name)さん、こんばんは")
}
helloActionWithNoAliasName("東海林")


// Class宣言
class Person {
    // Classないのフィールド宣言
    var name: String = ""
    // private　フィールド
    private var privateName: String = "Doc"
    var age: Int = 0

    //　Class内のメソッド宣言
    func greeting(time: String){
        switch time {
        case "Morning":
            print("\(name)ともうします。おはよう御座います。")
        case "Evening":
            print("\(name)です。こんにちは。")
        default:
            print("\(name)です。お疲れ様です。")
        }
    }
}

let actorA = Person()
actorA.name = "星野源"
//print("privateName: \(actorA.privateName)");
//actorA.privateName = "cat"
actorA.greeting(time: "Morning")

// Classの継承
class Actor: Person{
    var dramas: [String] = [String]()
    
    override func greeting(time: String) {
        super.greeting(time: time)
        print("\(dramas[0])に出ています。ぜひ見てください")
        print("以上、\(name)でした。")
    }
}

let ActorB = Actor()
ActorB.name = "新垣結衣"
ActorB.dramas.append("逃げ恥")
ActorB.greeting(time: "Evening")


// Struct 宣言
struct PersonStruct {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    mutating func comesBirthday(){
        age += 1
    }
}

// Struct　のインスタンス化
let personA = PersonStruct(name:"佐藤健", age: 25)
let personB = PersonStruct(name: "豊臣秀吉", age: 28)

// Structの利用
print("私の名前は、\(personA.name)です。")

//Propertyの監視を実施する
class CheckPropSample{
    var name: String = "def" {
        willSet {
            print ("\(name)から\(newValue)に変わる予定です。")
        }
        didSet {
            print ("\(oldValue)から\(name)に変わりました")
        }
    }
    
    private(set)var _age: Int = 0
    var age: Int{
        set{
            _age = newValue
        }
        get{
            return _age
        }
    }
}

let sampleObj = CheckPropSample()
sampleObj.name = "明智光秀"
sampleObj.age = 1
print(sampleObj.age)
print(sampleObj._age)

//enum の動作確認
enum Gender: String{
    case man = "man"
    case female = "female"
}

let gender = Gender(rawValue: "man")
print(gender)

//extension
extension PersonStruct{
    func introduce(){
        print("\(self.name)は、\(self.age)歳です")
    }
}
personA.introduce()

//protocol
protocol Animal{
    var name: String{get set}
    var barkString: String{get set}
    func bark()
}

//protocolのデフォルト実装を行っている。
extension Animal{
    func bark(){
        print(barkString)
    }
}

//protocolを利用したClassの生成
class Tiger: Animal{
    var name: String = "タイガー"
    var barkString: String = "ガオー"

}

let tiger = Tiger()
tiger.bark()

//closure
let simpleClosure = {() -> () in
    print("simpleClosureTest")
}
simpleClosure()

let printClouser = {() -> () in
    print("printClouser")
}

//返り値ありClosure
let simpleClosure2: () -> String = {() -> String in
    return "simpleClousre2の処理"
}
print("simpleClosure2: \(simpleClosure2())")

let simpleClosure3 = {
    print("simpleClosure3Test")
}
simpleClosure3()

let simpleClosure4: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

let simpleClosure5: (_ a: Int,_ b: Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

print("simpleClosure5:\(simpleClosure5(2,4))")
print("test")


let addFunc: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

let minusFunc: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a - b
}

let multiFunc: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a * b
}

let greetingFunc = {
    print("hello")
}

greetingFunc()

print("addFunc: \(addFunc(2,3))")
print("minusFunc: \(minusFunc(2,3))")
print("multiFunc: \(multiFunc(2,3))")

var animalList: [String] = ["tiger", "cat", "dog"]
print(animalList)


///// try-catch
do{
    // 処理
} catch let e {
    print(e)
}

// optional binding
if let json: String = try? "Exceptionが発生しえる処理" {
    print( json )
}

//for 文
for i in 0..<3 {
    print(i)
}

for i in (0..<3).reversed(){
    print(i)
}

// forEach文
(0..<3).forEach { (i) in
    print("forEach: \(i)")
}

// stride
for i in stride(from: 0, to: 10, by: 2).reversed(){
    print(i)
}

// Listでの実施
var intList: [Int] = [3,6,9]
for i in intList.reversed() {
    print(i)
}

// for case in 文
for case "tiger" in animalList{
    print("トラです")
}

// for in where 文
for animal in animalList where animal == "tiger" {
    print(animal)
}

// switch 文
value = 100
switch value{
case 0:
    print("value is 0")
case 1...100:
    print("1~100です")
    fallthrough
case -1:
    print("0ではありませんでしたね")
default:
    break
}


// guard文
var time = 9
func sayGoodMorning(time: Int){
    guard ( time < 9) else {
        print("朝ではありません")
        return
    }
    print("おはようございます")
}

func validate(message: String?){
    guard let _message: String = message else{
        return print("nilでしたよ")
    }
    print("nilではなく\(_message)でしたよ")
}

func show(message: String?) {
    // messageがnilだったらreturnする
    guard let theMessage = message else { // (1)
        return // (2)
    }
    print(theMessage)
}

validate(message: "[nilじゃない文字列]")
validate(message: nil)
sayGoodMorning(time: 10)
sayGoodMorning(time: 8)

//filter
let evenNumbers = (1...6).filter({value in
    return value % 2 == 0
})
print((1...6))
print(evenNumbers)

let oddNumbers = evenNumbers.map({val in
    return val - 1
})

print(evenNumbers)
print(oddNumbers)


//reduce
let ahoNumbers = (1...9).reduce("",{result, value in
    print("value = \(value)")
    if (value % 3 == 0){
        return result + "\(value):アホになる "
    } else{
        return result + "\(value):通常 "
    }
})

print(ahoNumbers)

let queryParameter = ["name=doc", "gender=0", "age=65"].reduce("1〜10で3の倍数だけアホになる。", { result, value in
    if result.isEmpty {
        return "?" + value
    }
    return result + "&" + value
})
print(queryParameter)
