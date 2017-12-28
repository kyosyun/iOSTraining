## 変数と定数
 - 定数:let　値を変更することがでけいない。 mutable
 - 変数:var　値を変更することが可能。 immutable

## 文字列と変数の組み合わせ
 - 以下で文字列の中に変数を組み込むことが可能
  - '\(変数名)'
  - 'String(変数名)'

## 符号付/符号なし整数/浮動小数点
Swiftは型が厳密。　Intにもいろいろな種類のIntがあり、異なる方への代入は出来ない。
 - 符号付き：　Int/Int16/Int32/Int64
 - 符号なし：　UInt/UInt16/UInt32/UInt64
 - 浮動小数点　Float/Double

## 型推論
 - 数値を代入すると生きには、型をして指定が型推論があるので、明示しない宣言も可能。
 - let value: Int = 10 -> let value = 10
 - 整数は：Int,　少数は Doubleとして型推論される
 - .max という指定も可能 ( let value: Int = .max)

## 配列
 1. 宣言の仕方(Mutable)
  - var array1: [String] = [String]()
 2. 格納の仕方(Mutable)
  - array1.append("iPhone6")
  - array1 += "iPhone6"
 3. 宣言の仕方（Imutable）
  - let array2: [String] = ["iPhoneSE","iPhone6"];
  - Imutableな配列は要素の追加は出来ない。

## 辞書（Map)
 1. 宣言の仕方
  - var 変数名: [型:型] = [値:値]
  - var 変数名: [型:型] = [値:値]
  - let dict3: [String : String] = ["iPhone6s" : "docomo", "iPhone7" : "au"]
   - let Imutableは要素の追加が行えない。
 2. 追加の仕方
  - var dict1: [String : String] = [String : String]()
  - dict1["iPhone6s"] = "docomo"
  - dict1["iPhone6Plus"] = "au"
 3. 利用の仕方
  - dict["iPhone6s"]

## Optional型
 - nil: 値がない状態を示す。
 - Swift では変数の生成時にnilを指定することは許可されていない。
 - nil を代入可能にするためにOptional型を使っている。
 - 型の後ろに? をつけることでオプショナル型を利用可能
 - String? は `Optional<String>` という `String` とは異なる型であるので、Stringの変数に代入は出来ない

 1. 宣言の仕方
  - var value: String? = nil
  - var value: Optional<String> = nil
 2. 利用の仕方
  - if let v = value{print(v)}
  - print(value!) //　!をつけることでforce unwrap　することが出来る。
  - let new Value ?? "" でも　unwrap することが出来る。
    - value がnil　でなかったらvalue をunwrapし、nilだった場合には空文字を代入するという結果
 3. 注意点
  - force unwrap はnilだった場合には落ちてしまう。
  -

## ImplicitlyUnwrappedOptional型
  - 変数がnilである可能性があっても、unwrapせずに利用したい場合。
  - ImplicitlyUnwrappedOptional型については、アクセスする際に暗黙的にアンラップされる。
  1. 宣言の仕方
   - var value: String! = nil
  2. 利用の仕方
   - print(value)
  3. 注意点
   type(of: value) は普通のOptional型と同様にOptional<String>が出力される。

## メソッド宣言
 - 戻り値なしのメソッド宣言
  - func メソッド名（引数名: 型）{ //処理 }
 - 戻り値ありのメソッド宣言
  - func メソッド名（引数名: 型） -> 戻り値の型{ //処理 }
 - 引数の別名があるメソッド宣言
  - func メソッド名(引数別名 引数名: 型) {//処理}

## Class宣言
 1. 宣言の仕方
  - class Person { // フィールドや、メソッド}
 2. インスタンス化の仕方
  - let actor = Person()
 3. Classのフィールド/メソッド名へのアクセスの仕方
  - actor.name = "星野源"
  - actor.greeting() //メソッド呼び出し

## Classの継承
 1. 宣言の仕方
  - class Actor: Person{ // 処理}
 2. メソッドのOverride
  - override func greeting(){}

 3. スーパーメソッドの呼び出し
  - super.greeting()
 4. 親プロパティの呼び出し
  - self.name
  - name //プロパティ名

## struct　// 存在意義は何なのか？使い所。mutatingとは？
 - Classとほぼ一緒。
 - classは参照渡しなのに対して、structは値渡しなので、
 　メソッドの引数にオブジェクトを渡した際や別な変数に代入した際にコピーされる。
 - struct 自身のプロパティの値を自身のメソッドで変更する際には、mutatingにしなくてはならない。
 - struct
 1. インスタンス化の方法
  - let person = Person(name:"佐藤健",age:25)
   - プロパティ名が自動的にinitializerの引数になっている。
   - initializerを定義することも出来るが、定義した場合に、自動生成のinitializerは使用できなくなる。

## Propertyの値を監視する
 - 　willSet や didSetを使うことで、propertyの値を関しすることが出来る。
 1. 利用の仕方
  - var age: Int 0 {
    willSet{/変更前の処理。newValueという変数で変更予定の値が取れる}
    didSet{/変更後の処理。oldValueという変数で変更前の値を取ることが出来る}
  }


## setter / getter
 - setter を実装すると値を保持するプロパティではなくなる。
 1. 宣言の仕方
  var age: Int {
    set { age = newValue}
    get { return age}
  }
 2. 呼び出し型
   - person.age = 1
   - print(person.age)

## generics
 - クラス、構造体、列挙で使用する任意の型を定義することが出来る。
 1. 利用の仕方
  - struct Stack<T>

 2. 呼び出し方。
  var stack = Stack<String>()

## enum
 - 自動的にinitializerが生成されるが列挙した値に対応しない値が渡されることもあるため、返り値はOptional型になっている。
  1. 宣言の仕方
    - enum enum名: 型名{ case 列挙子 }
    - enum Gender: String {
      case man = "man"
      case female = "female"
    }
    - 列挙子に対して変数をもたせることも可能
     - enum MyOptional<T>{
        case some<T>
      }
    - 型を指定せずに宣言が可能
     - enum Fruit{
       case apple
       case orange
     }

  2. 利用の仕方
    - let gender = Gender(rawValue: "man")

## tuple
 - 複数の値を一組にすることが出来る。
 1. 利用の仕方
  - 無名tuple
    - let item: (String, Int, Double) = ("iPhone7", 83800, 0.08)
    - `print("商品: \(item.0)")`
  - 名前付きtuple
   - let item:(name: String, price: Intm, tax: Double) = ("iPhone7", 83800, 0.08)
   - `print("商品: \(item.name)")`

## extension
 - 既存classや独自のclassに対してメソッドなどを追加が可能。
 1. 宣言方法
  - extension Person{ 追加するproperty/ methodなどを追記}

## protocol
   - クラスに実装するプロパティとメソッドを指定する機能（Interface)
   - protocolで宣言しているプロパティやメソッドを実装していないとエラーになる。
   - protocolにextensionが使えるのでデフォルト実装も可能
    - デフォルト実装を行うことで、各継承クラスでの生成は必須ではなくなる。（なければデフォルト実装を使う）
   - protocolの場合には、overrideは必要ない
  1. 利用の仕方
   - protocol Animal{
     var name: String{get set}
     var barkString: String{get set}
     func bark()
    }

## closure
 - 関数の宣言、単体で実行が可能
 1.  宣言の仕方
  - 引数、返り値有りパターン
  `let addFunc: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
  }`
  - 引数、返り値無パターン
   `let greetingFunc = {
     print("hello")
     }`

## try-catch
 1. 利用の仕方
  - 通常のtry-catch
    `do{処理}catch let e{ print(e)}`

  - optional-binding try?
    `if let json: String = try? "Exceptionが発生しえる処理" {
        print( json )
      }
      `

## for文
 - C-style for statement has been removed in Swift 3
 1. 利用の仕方
  - 通常のFor文の利用の仕方  
```
    for i in 0..<10 { // 10 は含まない。0..10だと10も含む
        print(i)
    }
```
  - 降順で行いたい場合  
   `(0..<10).reversed()`

  - forEach文  
   `(0..10).forEach({i in print(i)})`

  - 1ずつの処理ではない場合 stride
   ```
   for i in stride(from: 0,to: 10, by: 2){
     // to: 含まない
     // through: 含む
     // 反対にしたい場合：stride(from: 0,to: 10, by: 2).reversed()
        print(i)
    }
   ```
  - for case in 文
  ```
  for case .tiger in AnimalList{
    //処理を記載
  }
  ```
  - for in where 文　（for [変数] in [List変数] where [条件]{処理}
  ```
    for animal in AnimalList where animal == "tiger"{
      //処理を記載
    }
  ```

## switch-case 文
 - break を記載しなくても、次の処理には行かない。(Javaとの違い)
 - 処理を何もしない場合には、breakを明示する必要あり：エラーで落ちてしまう。
 - 次の処理まで行いたい場合んには、`fallthrough`を記載する。
  ```
  switch fruits{
    case apple:
      print("りんご")
      fallthrough
  }

  ```

## guard文
 - swift2.0から追加された
 - 条件に合わなかった場合に、returnするというのを書きやすくするための構文
 - Optional変数のnilチェックとunwrapが同時に行える。
 - return, break, continue, throwのいずれかを行わないとコンパイルエラーになる
 1.  利用の仕方
    ```
    func validate(message: String?){
        guard let _message: String = message else{
          return print("nilでしたよ")
        }
        print("nilではなく\(_message)でしたよ")
      }
      ```

##キャスト
 - as を使うことでキャストを行うことが出来る。
 1. optional cast
  ```  
    if let policeDog = dog as? PoliceDog {
        print(policeDog)
    }
  ```
 2. force cast 型が異なっていた場合には、実行時エラーになる
 ```
 print(dog as! PoliceDog)
 ```

## AccessControl
　- スコープの宣言を行うことが出来る。
 1. 利用の仕方
  ```
    private(set) var privateName: String = "Doc"
  ```

## filter
 - 条件にマッチした配列のみを返す
 1. 利用の仕方
 ```
 let evenNumbers = (1...6).filter({value in
     return value % 2 == 0
 })
 ```

## Map
 - 配列内の要素に処理を適用し、処理を適用した配列を使いたい場合に使用する
1. 利用の仕方
```
    let oddNumbers = evenNumbers.map({val in
        return val - 1
    })
```

## reduce
 - 配列内の値を使って集計を行いたいときに利用を行う
 - 最初の引数に、Initialのvalueを記載する。
 - return のたびにresultが書き換わっていく。
 1. 利用の仕方
 ```
 //reduce
  let ahoNumbers = (1...9).reduce("1〜10で3の倍数だけアホになる。",{result, value in
     if (value % 3 == 0){
         return result + "\(value):アホになる "
     } else{
         return result + "\(value):通常 "
     }
  })
 ```

## flatMap
 - 配列内の要素に処理を施して、nil出ないもののみを配列にする
 ```
let genderList = [0, 1, 2, 3, 0, 1].flatMap({ value in
    return Gender(rawValue: value)
})
 ```

## 気になリスト
 - Structのメリット
 - getter/setter の存在意義。　setter を用意しても直接代入出来るのはなぜ？
