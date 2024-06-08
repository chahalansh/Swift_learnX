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

