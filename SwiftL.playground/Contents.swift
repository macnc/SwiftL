//: Playground - noun: a place where people can play

import Cocoa

var str = "你好, 孙涛. 欢迎来到Swift的美好世界！"
var mv = 78     //变量
let ml = 22     //常量

//两个不同类型的数据不能直接进行运算来实现隐形转换
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

/* 使用\()符号将数字类型转化为字符串类型 */
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(oranges + apples) pieces of fruit."

/*\()符号转换float数据类型为字符串，输出为打招呼信息*/
let uWeight:Float32 = 68.32
let uName = "孙涛"
let uResult = "Hi, " + uName + " you got \(uWeight) kgs totally."

/* “使用方括号[]来创建数组和字典，并使用下标或者键（key）来访问元素。最后一个元素后面允许有个逗号。” */
var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"

/*字典的创建方式，字典中的数据结构类似于json的数据结构*/
var occupations = [
    "Malcolm": "Caption",
    "Keylee": "Mechanic",
]
//可以直接用新的名字作为key，使用赋值的方式往字典里加数据
occupations["Jayne"] = "Public Relations"

//创建一个空的数组或者字典，使用初始化的语法
print("创建一个空的数组或者字典，使用初始化的语法")
let emptyArry = [String]()
let emptyDictionary = [String: Float]()

//“如果类型信息可以被推断出来，你可以用[]和[:]来创建空数组和空字典——就像你声明变量或者给函数传参数的时候一样。”
shoppingList = []
occupations = [:]

//控制流语法
/*“使用if和switch来进行条件操作，使用for-in、for、while和repeat-while来进行循环。包裹条件和循环变量括号可以省略，但是语句体的大括号是必须的。”*/
let individualScores = [75,43,103,88,56]
var teamScore = 0
for score in individualScores{
    if score > 50 {
        teamScore += 3
    }
    else{
        teamScore += 1
    }
}
print(teamScore)

/*“在if语句中，条件必须是一个布尔表达式——这意味着像if score { ... }这样的代码将报错，而不会隐形地与 0 做对比。
你可以一起使用if和let来处理值缺失的情况。这些值可由可选值来代表。一个可选的值是一个具体的值或者是nil以表示值缺失。在类型后面加一个问号来标记这个变量的值是可选的。” */
var optionalString:String? = "Hello"
print(optionalString == nil)

var optionalName:String? = "John Appleseed"
var greeting = "Hello!"
//下面的代码：新的变量name，将optionalName的值赋给它，如果optionalName的值不为空时，执行紧接着下面的语句；否则执行else逻辑分支的代码. “如果变量的可选值是nil，条件会判断为false，大括号中的代码会被跳过。如果不是nil，会将值赋给let后面的常量，这样代码块中就可以使用这个值了。 - 这一块有疑问！！”
if let name = optionalName{
    greeting = "Hello, \(name)"
}
else{
    greeting = "There's no people available!"
}

//“你可以一起使用if和let来处理值缺失的情况。这些值可由可选值来代表。一个可选的值是一个具体的值或者是nil以表示值缺失。在类型后面加一个问号来标记这个变量的值是可选的。”
/*另一种处理可选值的方法是通过使用 ?? 操作符来提供一个默认值。如果可选值缺失的话，可以使用默认值来代替。*/
let nickName:String? = nil
let fullName:String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

//switch支持任意类型的数据以及各种比较操作 -- 不仅仅是整数以及测试相等
/*“注意let在上述例子的等式中是如何使用的，它将匹配等式的值赋给常量x。运行switch中匹配到的子句之后，程序会退出switch语句，并不会继续向下运行，所以不需要在每个子句结尾写break。”*/
let vegetable = "red pepper"
switch vegetable{
    case "celery":
        print("Add some raisins and make ant on a log")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("It is a spicy \(x)?")
   default:
        print("Everything tastes good in soup.")
}

//你可以使用for-in来遍历字典，需要两个变量来标示每个键值对。字典是无序的集合，所以他们的键和值以任意顺序迭代结束。
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]
var largest = 0
var entryName:String? = nil
for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
            entryName = kind
        }
    }
}
print(entryName,largest)

//使用while来重复运行一段代码知道不满足条件。循环条件也可以在结尾，保证至少循环一次
var n = 2
while n<100{
    n = n*2
}
print(n)

var m = 2
repeat{
    m = m * 2
} while m < 100

print(m)

//“你可以在循环中使用..<来表示范围，也可以使用传统的写法，两者是等价的”
var firstForLoop = 0
for i in 0..<4{
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for var i=0; i<4; ++i{
    secondForLoop += i
}
print(secondForLoop)

//“使用func来声明一个函数，使用名字和参数来调用函数。使用->来指定函数返回值的类型。”
func greet(name:String, day:String) -> String{
    return "Hello \(name), today is \(day)."
}

greet("Bob", day:"Tuesday")

//使用元组让一个函数返回多个值，该院组的元素可以用名称或者数字来标示
func calculateStatistic(scores:[Int]) ->(min:Int, max:Int, sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
            if score > max{
                max = score
            }else if score < min{
                min = score
            }
        
        sum += score
    }
    return(min, max, sum)
}

let statistic = calculateStatistic([5,3,100,3,9,23,14])
print(statistic.sum)
print(statistic.0)

//函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式
func sumOf(numbers: Int...) ->Int{
    var sum = 0
    for number in numbers{
        sum += number
    
    }
    return sum
}
sumOf()
sumOf(42,0,26,331,23,-6)

//Practice: 计算平均数的函数
func avgOf(numbers: Double...) ->Double{
    var avg = 0.0
    var sum = 0.0
    for number in numbers{
        avg += 1
        sum += number
    }
    return sum/avg
}
avgOf(45,23,55,14,29,33)

//函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用韩涛函数来重构一个太长或者太复杂的函数
func returnFifteen() ->Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
returnFifteen();

//函数是第一等类型，这意味着函数可以作为另一个函数的返回值。
func makeIncrementer() ->(Int ->Int){
    func addOne(number: Int) -> Int{
        return 1+number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//函数也可以作为参数传入另一个函数
func hasAnyMatches(list:[Int], condition: Int ->Bool) ->Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number:Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7,12]
hasAnyMatches(numbers, condition: lessThanTen)

/*函数其实是一种特殊类型的闭包：它是一段能之后被调取的代码，闭包中的代码能访问闭包所建作用域中能得到的函数和变量，即使闭包是在一个不同的作用域被执行的 - 你已经在嵌套的例子中所看到
你可以使用{}来创建一个匿名的闭包。使用in将参数和返回值类型声明与闭包函数体进行分离*/
numbers.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
})

//有很多种创建更简洁的闭包的方法，如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回
let mappedNumbers = numbers.map({number in 3 * number})
print(numbers)

/*你可以通过函数位置而不是参数名字来引用参数 - 这个方法在非常短的闭包中非常有用。当一个闭包作为最后一个参数传给一个函数的时候，
他可以直接跟在括号里面，当一个闭包是传给函数的唯一参数，你可以完全忽略括号*/
let sortedNumbers = numbers.sort{$0 > $1}
print(sortedNumbers)
