//
//  main.swift
//  day3
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var a = [10,20,30,40,50,60,70,80,90,100]

//print(a[1])

for x in a
{
    print(x)
}
a.append(110)
a.append(120)
//a[10] = 110
print (a[10])


print("-------------")
print (a.capacity)
print (a.count)

 if  a.isEmpty
{
    print ("array is empty")
    }
else
{
    print( "array contains some elements")
}
var x = Int()
print(x)

//let othercountries = [ "pak","russia","UK"]
var country:[String]!
country = [String]()

//country += othercountries
country = country+[ "pak","russia","UK"]

if var c = country
{
c.append("india")
c.append("canada")
c.append("usa")
    print("no of countries : \(c.count)")

}
print(" no of countries :\(country.count)")


var de = [2,1,6,3,4,5,7,8]
var e = ["a","n","e","f"]
print(de)
print(e)

de.sort()
e.sort()
print(de)
print(e)




//recurssion Array Example
func printN(n: Int)
{
if (n == 0)
 {
 return
 }
 else
{
    printN(n:n - 1)
    print(n)
    
    }
}
/*
//recurssion  Example
func sumN(n: Int) -> Int
{
    var sum = 0
    if ( n == 0)
    {
        return 0
    }
    else
    {
        sum = sum + sumN(n: n - 1)
    }
}*/
print("*********************")
printN(n: 10)


 // array in reverse order
func printTheReverseArray(arr:[String], index: Int)
{
    if arr.isEmpty
    {
        return
    }
    else
    {
        
    if index == -1
     {
        return
        }
    else
     {
        print(arr[index])
        printTheReverseArray(arr: arr,index:index - 1)
        }
    }
}
printTheReverseArray(arr: country, index: country.count - 1 )

var countryDictionary = ["key": "value","ind":"india","cad":"canada","usd":"united states of america"]

print(countryDictionary)
print(countryDictionary["usa"] ?? "key not exist")
//print(countryDictionary ["usa"]!)

print(countryDictionary["pak"] ?? "key not exist")


if let c = countryDictionary["pak"]
{
    print(c)
}

for c in countryDictionary
{
    print(c)
    print(c.key,c.value)
}
countryDictionary["pak"] = "pakistan"
for (k,v) in countryDictionary
{
    print(k,v)
}
var newC = Dictionary<String, Int>()
var newArray : Array<Int>
var mySet = Set<String>()

mySet.insert("Uae")
mySet.insert("USA")
mySet.insert("China")
mySet.insert("russia")
print(mySet)

var mySet2=Set<String>()

mySet2.insert("India")
mySet2.insert("USA")
mySet2.insert("UK")
print(mySet)

print("---------------")
let interset =  mySet.intersection(mySet2)
print(interset)

let unionSet = mySet.union(mySet2)
print(unionSet)

let disjointSet = mySet.isDisjoint(with: mySet2)
print(disjointSet)

let minset = mySet.subtracting(mySet2)
print(minset)

let symDiffser = mySet.symmetricDifference(mySet2)
print(symDiffser)

var ss = Dictionary<String,Any>()
ss["int"] = 100
ss["String"] = "hello world"
ss["dict"] = ["k":"v","ko":100]
ss["tuple"] = (100,200)

for item in ss
    {
        if item.value is Int
        {
            print("am an integer :\(item)")
            
        }
    if item.value is String
    {
        print("am an string :\(item)")
        
        }
        
        if item.value is Dictionary<String,Any>
        {
            print("am an dictonary:\(item)")
            
        }
      
        if item.value is (Int,Int)
        {
            print("am an tuple :\(item)")
            
        }
        
        
        
        
        
}
