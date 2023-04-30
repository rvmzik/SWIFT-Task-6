//EDUCATION

let dict : [String:String] = ["car" : "first", "plane" : "second"]
let dict2 : Dictionary<String, Double> = ["a" : 2.0]
dict["plane"]

print(dict["plane"]!)


var dict3 = ["c" : 1, "d" : 2]

dict3.count
dict3.isEmpty


var dict4 = [String: String]()

dict4.count

dict.isEmpty

dict3["a"] = 123
dict3.keys
Array(dict3.keys.sorted())
Array(dict3.values.sorted())

dict3.updateValue(456, forKey: "a")

let comp : Int? = dict3["a"]
 
if let s = dict3["a"]{
    print(s)
}

dict3["c"] = nil // delete element
dict3

//dict3.removeValue(forKey: "d") // delete element
dict3["c"] = 1
//dict3.removeAll() // delete all
dict3["c"] = 1
dict3["d"] = 2
dict3["a"] = 3
//dict3 = [:]   // delete all
dict3.updateValue(456, forKey: "a") // update and show previous element
dict3

for key in dict3.keys{
    print("key = \(key) : value = \(dict3[key]!)")
}

for (key, value) in dict3{
    print("key = \(key) : value = \(value)")
}



//TASK

//1
 
var dicti = ["Name1" : 4, "Name2" : 5, "Name3" : 7, "Name4" : 3, "Name5" : 6]

dicti["Name4"] = 5

dicti.updateValue(6, forKey: "Name1")

dicti["Name6"] = 9
dicti["Name7"] = 6

dicti.removeValue(forKey: "Name1")
dicti.removeValue(forKey: "Name2")
dicti
var sum = 0
for (_, value) in dicti{
    sum += value
}

print(sum)
var sum1 = 0
for value in dicti.values{
    sum1 += value
}
print(sum1)

sum1 = 0
var srd = 0
for value in dicti.values{
    sum1 += value
}
print(sum1/dicti.count)



//2

let dicti2 = ["January" : 31, "February" : 28, "Marth" : 31, "April" : 30,
              "May" : 31, "June" : 30, "Jule": 31, "August" : 31, "September" : 30,
              "October" : 31, "November" : 30, "December" : 31]


//tuples
for (key,value) in dicti2{
    print("key = \(key) : value = \(value)")
}

//array
for (month, day) in dict3{
    print("key = \(month) : value = \(day)")
}
//1 1 1 3 1 5 1 7
//2 2 2 4 2 6 2 8

//3
var a1 = ["a","b","c","d","e","f","g","h"]
var a2 = [1,2,3,4,5,6,7,8]
var d1 = ["a" : false]
d1.removeAll()
for word in 0..<a1.count{
    for num in 0..<a2.count{
        if num % 2 == 0 && word % 2 == 0{
            d1[a1[word] + String(a2[num])] = true
        } else if num % 2 != 0 && word % 2 != 0{
            d1[a1[word] + String(a2[num])] = true
        }
        else {
            d1[a1[word] + String(a2[num])] = false
        }
    }
}
print(d1)
