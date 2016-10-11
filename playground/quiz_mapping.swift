//: Playground - noun: a place where people can play

import UIKit
import XCTest

class sampleTest : XCTest {
}

var a = 1..<4

let names:[String] = ["aa", "abb", "abbc", "abbcccdddd", "ddeeee"]



var counts:[Int] = []
for name in names {
    counts.append(name.characters.count)
}
print(counts)


let cond = "dd"
var filtered:[String] = []
for name in names {
    if name.contains(cond) {
        filtered.append(name)
    }
}
print(filtered)


var reversed:[String] = []
for name in names {
    let str:String = String(name.characters.reversed())
    reversed.append(str)
}
print(reversed)


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




