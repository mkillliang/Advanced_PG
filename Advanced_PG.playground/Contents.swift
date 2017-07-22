//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, my Advanced playground"

//class 为引用类型
class A{
    var mm = 1
}
var a = A()
a.mm
var b = a
b.mm
b.mm = 2
b.mm
a.mm

//struct 为值类型
struct C{
    var mm = 1
}
var c = C()
c.mm
var d = c
d.mm
d.mm = 2
d.mm
c.mm

//Swift的泛型和Tuple(元组)的性质
func swap<T>(_ nums: inout [T], _ p: Int, _ q: Int) {
    (nums[p], nums[q]) = (nums[q], nums[p])
}

//输入任意整数，返回整数+n
func addNum(num:Int,addnum:Int) -> Int{
    return num + addnum
}

addNum(num: 10, addnum: 5)

func add(_ num: Int) -> (Int) -> Int {
    return { val in
        return num + val
    }
}

let add2 = add(2)

// guard let 语句以及 optional chaining
func divide(dividend: Double?, by divisor: Double?) -> Double? {
    guard let dividend = dividend, let divisor = divisor, divisor != 0 else {
        return nil
    }
    
    return dividend / divisor
}
//guard let 跟正常逻辑的区别
func divide2(dividend:Double?,by divisor:Double?)-> Double?{
    if (dividend == nil || divisor == nil || divisor==0){
        return nil
    }else{
        return dividend! / divisor!
        
    }
}

divide(dividend: 0, by: 2)
divide2(dividend: 0, by: 2)

var a1 = 3
var stopnum = 0
var a2 = a1
func doubleNum(num:Int)->Int{
    return  num * 2
}
while(stopnum != 100){
    a2 = doubleNum(num: a1)
    stopnum += 1
}
a2
//for _ in 0..<100 {
//    a1 = a1 * 2
//}


//算法
var nums = [Int]()

for _ in 1...50
{
    nums.append(Int(arc4random()))
}
nums

//冒泡排序
/*
 var count = 0;
 for(var i = 0 ; i < nums.count-1; i++){
 for(var j = 0; j < nums.count-i-1;j++){
 count++;
 if(nums[j] > nums [j+1]){
 let temp = nums[j];
 nums[j] = nums[j+1];
 nums[j+1] = temp;
 }
 }
 }
 count
 */
var count = 0
for i in 0..<nums.count-1{
    for j in 0..<nums.count-i-1{
        count+=1
        if (nums[j]>nums[j+1]){
            let temp = nums[j]
            nums[j] = nums[j+1]
            nums[j+1] = temp
        }
    }
}
count

class mygril{
    var mand:String?
    init(mand:String) {
        self.mand = mand
    }
}
var yoyo = mygril(mand: 99)

