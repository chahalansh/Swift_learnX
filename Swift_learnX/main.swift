//
//  main.swift
//  Swift_learnX
//
//  Created by Ansh Chahal on 08/06/24.
//

import Foundation

// Printing Hello World

print("Hello, World")

//VARIABLES AND DATA TYPES:

// There are basically 2 ways to declare values in swift:
//    ~First is using 'var' keywords representing variables:
var a = 12
print(a)

a = 17
print (a)
// #IMPORTANT# Always use wide space before and after the equal to (=) sign while declaring in Swift, else it will throw an error.
//    ~Second is using 'let' keyword representing a constant.
let h = 15
print("the value of h is:", h)

// To declare a data type to a variable we use:
var x: Int = 20

// keywork: Datatype = value

print(x)

var s: String = "Ansh"

var c: Character = "A"

var i: Int = 09

var d: Double = 9.09090909090909

var f: Float = 9.090909

var b: Bool = true

print(s)
print(c)
print(i)
print(d)
print(f)
print(b)

// CONDITIONAL STATEMENTS IF ELSE
// Other conditionals same as C programming languages; if, else if, else, nested if else...

var m = 15
if m == 15
{
    print("Ansh Chahal learning Swift Basics.")
}
else{
    print("False")
}

// LOOPS; FOR, WHILE, REPEAT WHILE:
// For loop
for i in 1...3
{
    print("Swift")
    print("printing value of i", i)
    // other way of concatenation is:
    print("printing value of i is \(i)")
}


// While Loop
var o = 1
var p = 10
while o <= p
{
    print (o)
    o += 1;
}

// Repeat while  =  do while
repeat
{
    print (o)
    o += 1;
} while (o <= p)

// ARRAY 1D, 2D;
var intArr = [1,2,3,4,5]
var intArr1: [Int] = [1,2]

print(intArr[1])
print(intArr1[1])

for i in 0...4
{
    print(intArr[i])
}

// we can also add the upper limit of array using the count of array;
for i in 0..<intArr.count
{
    print(intArr[i])
}

//2D Array

var arr2d: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
print(arr2d)
print(arr2d[0][0])

//if we have to print each value of 2d array as an iteration
for i in 0...2
{
    for j in 0...2
    {
        print(arr2d[i][j])
    }
}

// How to print a matrix from an 2D array
 
var arr2d1: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
 
for i in 0..<arr2d1.count
{
    var line = ""
for j in 0..<arr2d1[i].count
    {
        line += String(arr2d1[i][j])
        line += " "
        //print(arr2d1[i][j])
    }
print(line)
}

// SWITCH Case
var v = 2
switch(v)
{
    case 1:
    print("True Case 1")
fallthrough // we can use break also if we want to print single statement to print
    case 2:
    print("True Case 2")
fallthrough
    case 3:
    print("True Case 3")
fallthrough
    case 4:
    print("True Case 4")
fallthrough
    case 5:
    print("True Case 5")
fallthrough
default:
    print("True case for default")
}

var y = 2
switch(v)
{
    case 1:
    print("True Case 1")
break
    case 2:
    print("True Case 2")
break
    case 3:
    print("True Case 3")
break
    case 4:
    print("True Case 4")
break
    case 5:
    print("True Case 5")
break
default:
    print("True case for default")
}

//Dictionary
//key and values
// format is --> let dictname:[key datatype:value data type] = ["key1":value1, "key2":value2, ...]
let valueDict:[String:Int] = ["A":1, "B":2, "C":34]
let valueDict1 = ["A":1, "B":2, "C":34] //actually the default data type for key is string and for values is integer
print(valueDict)
print(valueDict1)
let emptyDict:[String:Int] = [:]
print(emptyDict)

print(valueDict["A"])

for (i,j) in valueDict
{
    print("\(i) \(j)")
}
print(valueDict.isEmpty)
print(valueDict.count )

//SET in Swift
// Basic format --> let setname: set datatype = [1,4,6,3]
var set1: Set = [1,2,2,3,3,3,55,55,8,8]
let arr1: [Int] = [1,2,2,3,3,3,55,55,8,8]
print(set1)
print(arr1)
 
for i in set1
{
    print(i)
}
// to insert any value in the set we use .insert(value)
set1.insert(10)
print(set1)

// to remove any value we use .remove
set1.remove(8)
print(set1)

// for ascending we use sorted
print(set1.sorted())
// for decending we use reversed
print(set1.reversed())
// for count we use .count
print(set1.count)
// to find union, intersection, symmetricDifference make another set, say set2, and then you can easily find all of these using .union,...

// FUNCTIONS

 func ansh()
{
    print("Ansh")
}
ansh()
//function with no return type
func ansh1() -> ()
{
   print("Ansh1")
}
ansh1()
//another way to represent a no return type function
func ansh2() -> Void
{
   print("Ansh2")
}
ansh2()

func anshpara(any:String, num:Int)
{
    print("the name is \(any) and the value is \(num)")
}
anshpara(any:"Ansh", num:20)

// making a function that returns some value
func fname1() -> Int
{
    return 10
}
print(fname1())

// Nested Function
func function1(message:String)
{
    func function2()
    {
        print("Hi, funciton1: \(message)")
    }
    function2()
}
function1(message: "Ansh")

// RECURSION
func recurv(num : Int)
{
    print(num)
    if(num < 10)
    {
        recurv(num: num + 1)
    }
}
recurv(num: 1)

func recurv1(num : Int)
{
    print(num)
    if(num > 1)
    {
        recurv1(num: num - 1)
    }
}
recurv1(num: 10)

func factorial(num : Int) -> Int
{
    if num == 1
    {
        return 1
    }
    else {
        return num * factorial(num: num - 1)
    }
}
print(factorial(num: 3))

// CLOSURE IN SWIFT

let anshClosure =
{
    print("Ansh working with closures")
}
anshClosure()

let anshClosure1:(String) -> () =
{
    app in print("Ansh working with closures \(app)")
}
anshClosure1("Swift IOS") // this string value is saved in a variable in this case, "in" in "app in print" is a separator and "app" is a variable. this value(Swift IOS) is saved in "app"

let table:(Int, Int) -> (Int) =
{
    (val1, val2) in for val2 in 1...val2
    {
        print("\(val1) * \(val2) = \(val1 * val2)")
    }
    return 0
}
table(10,10)
