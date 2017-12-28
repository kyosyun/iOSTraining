let h: String? = "H"
let ell = "ell"
let o: String? = "o"
var world: String! = nil
world = " world!"

//force unwrapを使わずに"Hello World!"を表示する。
//print出来るのは、InImplicitlyUnwrappedOptional型　or String型

print((h ?? "") + ell + (o ?? "") + world)

//模範解答1 optional binding　を利用した場合
if let h2 = h, let o2 = o, let world2 = world {
    print(h2 + ell + o2 + world2)
}


//模範解答2 flatMapを利用した場合
let strList = ([h, ell, o, world]).flatMap({ value in
    return value
})
print(strList.joined())

 //模範解答3 reduceを利用した場合
