//: Playground - noun: a place where people can play

import UIKit
import XCTest

class sampleTest : XCTest {
}

var a = 1..<4

let names:[String] = ["aa", "bb", "bbc", "bbcccdddd", "ddeeee"]


let cond = "dd"
var filtered:[String] = []
for name in names {
    if name.contains(cond) {
        filtered.append(name)
    }
}
print(filtered)

//답 1번
let condArray = names.filter{$0.contains("dd")}
print(condArray)



var reversed:[String] = []
for name in names {
    let str:String = String(name.characters.reversed())
    reversed.append(str)
}
print(reversed)

//답 2번
let reversedArray = names.map({ (value : String) -> String in return String(value.characters.reversed()) })
print(reversedArray)



var longest:[String] = names
for i in 0 ..< names.count {
    for j in i ..< names.count {
        let name1 = longest[i]
        let name2 = longest[j]
        if name1.characters.count < name2.characters.count {
            var temp = name1
            longest[i] = name2
            longest[j] = temp
        }
    }
}
print(longest)

//solution
var long:[String] = []

long = names.sorted{$0.characters.count > $1.characters.count}
print(long)


var count:Dictionary<String, Int> = [:]
for item in names {
    for charItem in item.characters {
        if (count.keys.contains(String(charItem))) {
            count[String(charItem)] = count[String(charItem)]! + 1
        } else {
            count[String(charItem)] = 1
        }
    }
}
print(count)

var name = names
for item in count {
    for innerItem in name {
        if (innerItem.contains(item.key)) {
            var count:Int = 0
            for i in innerItem.characters {
                if (String(i) == item.key) {
                    count = count + 1
                }
            }
            if (count == item.value) {
                name.remove(at: name.index(of: innerItem)!)
            }
        }
    }
}

print(name)


