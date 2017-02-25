//: Playground - noun: a place where people can play

import UIKit
import Darwin


// move zero algorithm
print("\nmove zero algorithm\n")

var numberArray = [1, 9, 8, 4, 0, 0, 2, 7, 0, 6, 0, 9]

var counter = 0

for var i in 0..<numberArray.count {
    if numberArray[i] != 0 {
        numberArray[counter] = numberArray[i];
        counter+=1;
    }
}
while counter < numberArray.count{
    numberArray[counter] = 0;
    counter+=1
}
print(numberArray)

// reverse array
print("\nreverse array\n")
var digits = [0,1, 2, 3, 4, 5, 6, 7, 8, 9]
print(digits)
for var i in 0..<digits.count/2{
    var temp = digits[i]
    digits[i]=digits[digits.count-1-i]
    digits[digits.count-1-i]=temp
    
}
print(digits)

/* plus one
 Given [1,2,3] which represents 123, return [1,2,4].
 Given [9,9,9] which represents 999, return [1,0,0,0].
 */
print("\nplus one\n")
var store = [9,9,9];
var n = store.count;
let cary=1
for i in (0...n-1).reversed(){
    if store[i]==9{
        store[i]=0
    }
    else {
        store[i]+=cary
        break
    }
}
if store[0]==0{
    
    var newStore = Array(repeating: 0, count: store.count+1)
    newStore[0]=1
    print(newStore)
}
print(store)

/* Rotate an Array with an elements
 For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
 */
print("\nRotate an Array with an elements\n")
let rotateArray = [1, 2, 3, 4, 5, 6, 7, 8]
let shiftIndex = 3

var newRotatedArray = rotateArray[shiftIndex..<rotateArray.count]

newRotatedArray+=rotateArray[0..<shiftIndex]
print(newRotatedArray)

/*
 Find a pair of elements from an array whose sum equals a given number.
 
 */
print("\nFind a pair of elements from an array whose sum equals a given number.\n")

let targetArray=[3,5,2,7,-4,-2,6]
let target=11
for i in 0..<targetArray.count{
    for j in 1..<targetArray.count{
        if (targetArray[i]+targetArray[j])==11{
            print("Idex i :\(i) + Index j: \(j)")
        }
    }
}

/*
 Find a pair of elements from an array whose sum equals a given number by using Hash(dictionar in swift)
 */
print("\nFind a pair of elements from an array whose sum equals a given number by using Hash(dictionar \n")

let plainArray=[3,5,2,7,-4,-2,6]
let sumValue=11
var hashDict = [Int:Int]()
for i in 0..<plainArray.count{
    hashDict[plainArray[i]] = i
    //print("Key \(plainArray[i])+ Hash Value :\(i)")
}


for j in 0..<plainArray.count{
    let index:Int?
    index=hashDict[sumValue-plainArray[j]]
    if index != nil{
        print("Hash(K - arr[i]) has sum 11 with Index  : \(index!)")
        
    }
}


/*
 Remove duplicates from an Array
 */
print("\nRemove duplicates from an Array\n")
var dublicatedArrays=[3,5,7,3,9,7,8,4,1]
print("dublicatedArrays \(dublicatedArrays)")
dublicatedArrays = dublicatedArrays.sorted()
print("dublSortedArrays \(dublicatedArrays.sorted())")

var index:Int = 0

for j in 1..<dublicatedArrays.count{

    if dublicatedArrays[j] == dublicatedArrays[index]{
        dublicatedArrays.remove(at:index)
    }
    index+=1
    if dublicatedArrays[j]==dublicatedArrays.last{
        break
    }
}
print("dublicatedArrays \(dublicatedArrays)")

/*
 Sort an Array
 */

print("\nSort an Array\n")
var unSortedArray=[3,5,7,3,9,7,8,4,1]

print("unSortedArray \(unSortedArray)")

for i in 1..<unSortedArray.count{
    var y=i
    while y>0 && unSortedArray[y] < unSortedArray[y-1]{
        
        var temp = unSortedArray[y]
        unSortedArray[y]=unSortedArray[y-1]
        unSortedArray[y-1]=temp
        y-=1
    }
}
print("SortedArray \(unSortedArray)")

/*
 Given a list of non negative integers, arrange them such that they form the largest number.
 */
print("\nArrange the largest number from the integer Array.\n")

var numbersOfArray=[3, 30, 34, 5, 9, 89, 8]
var stringOfArray=["", "", "", "", "","",""]
print("Number of Array :\(numbersOfArray)")
var str:String=""
for i in 0..<numbersOfArray.count{
    //var j:Int=i
    //stringOfArray.append(String(describing:numbersOfArray[i]))
    stringOfArray[i]=String(describing:numbersOfArray[i])
    //j+=1;
    
}
stringOfArray=stringOfArray.sorted()
print("Sorted String of Array :\(stringOfArray)")
for i in (0..<stringOfArray.count).reversed(){
    str.append(stringOfArray[i])
}
print(str)

/*
 Two Sum
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 */
print("\nTwo Sum")

var nums=[2, 7, 11, 15]
print(nums)
let targetSum=9

for i in 0..<nums.count{
    for j in 1..<nums.count{
        if nums[i]+nums[j]==targetSum{
          print("pair numbers that add up \(targetSum) + Index \(i) + and Index \(j)")
        }
    }
        
    }

/*
 Bianary Search
 
 Given a sorted array of integers, return the index of the given key. Return -1 if not found.
 */
print("\nBianary Search")
var searchArray=[12,34,45,65,76,78,3,56,87,23,43,75,19,91,123]
var targetValue=45

var lowIndex=0
var highIndex=searchArray.count-1
searchArray=searchArray.sorted()
print("Sorted Search Array\(searchArray)")
while lowIndex<=highIndex {
    var midIndex=lowIndex+(highIndex-lowIndex)/2
    if searchArray[midIndex]==targetValue{
        print("Found Target Value at Index : \(midIndex)")
    }
    if targetValue>searchArray[midIndex]{
        lowIndex=midIndex+1
    }
    else{
        highIndex=midIndex-1
    }
}

/*
 Find a pair of elements from an array whose sum equals a given number with sorted array
 
 */
print("\nFind a pair of elements from an array whose sum equals a given number.")

var values=[5,7,1,2,8,4,3]
print("Unsorted Array\(values)")
values=values.sorted()
print("Sorted Array  \(values)")
var leftIndex=0
var rightIndex=values.count-1
let foundValues=10
while leftIndex<rightIndex{
    var sum = values[leftIndex] + values[rightIndex]
    if sum==foundValues{
        print("Found Values with the Index :\(leftIndex) + rightIndex :\(rightIndex)" )
        leftIndex+=1
        rightIndex-=1
    }
    else if sum<foundValues{
        leftIndex+=1
    }
    else{
        rightIndex-=1
    }
}

/*
 Find a pair of elements from an array whose sum equals a given number with Hash(Dictionary)
 
 */
print("\nFind a pair of elements from an array whose sum equals a given number with Hash(Dictionary).")

var valuesArray=[5,7,1,2,8,4,3]
let targetValues=10
var hashDictionaryForArray=[Int:Int]()
for i in 0..<valuesArray.count{
   hashDictionaryForArray[valuesArray[i]]=i
}
print(valuesArray)
print(hashDictionaryForArray)
for j in 0..<valuesArray.count{
    let index:Int?
    index=hashDictionaryForArray[targetValues-valuesArray[j]]
    if index != nil && valuesArray[j] != (targetValues-valuesArray[j]){
        print("Hash(K - arr[i]) has sum 10 with Index  : \(index!)")
    }
}

let numberList:Array<Int>=[1,2,3,4,5,6,7]
print(numberList.count)
let key=3
var midindex=round((3+4)/2)
print(Int(midindex))
for number in numberList{
    print(number)
    if number==key{
        let result="Value Key Found"
        print(result)
        print(number)
        break
    }
}
/*
 Insertion Sort
 */
print("\nInsertion Sort")
var unsortedArray:Array<Int>=[3,45,23,34,67,12,0,87,45,23,9,83,27,91]
print(unsortedArray)
var temp:Int
for i in 1..<unsortedArray.count{
    var j=i
while j>0 && unsortedArray[j]<unsortedArray[j-1]{
        temp=unsortedArray[j-1]
        unsortedArray[j-1]=unsortedArray[j]
        unsortedArray[j]=temp
    j-=1
    }
}
print(unsortedArray)

/*
 Buble Sort
 */
print("\nBuble Sort")

var unsortedBubleArray:Array<Int>=[3,45,23,34,67,12,0,87,45,23,9,83,27,91]
print(unsortedBubleArray)
for i in 0..<unsortedBubleArray.count{
    var passes=unsortedBubleArray.count-1-i
    for j in 0..<passes{
        if unsortedBubleArray[j]>unsortedBubleArray[j+1]{
            temp=unsortedBubleArray[j]
            unsortedBubleArray[j]=unsortedBubleArray[j+1]
            unsortedBubleArray[j+1]=temp
        }
            }
}
print(unsortedBubleArray)
