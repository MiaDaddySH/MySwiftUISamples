// 1. 基础内容
// Optionals say
// either “there is a value, and it equals x”
// or “there isn’t a value at all”.
// Optional和OC里面的nil指针类似，但是optional针对于所有的类型，而nil只是对象。

//Swift类型安全的语言，它会阻止我们把Int传入String类型的变量。
// 即便是optional的String也不能传给String变量，这样就很早的避免了错误。

// 2. 常量和变量
// 常量使用let来声明，一旦设定不能修改；
// 变量使用var来声明，可以随时修改它的值，不过是同类型的。

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
var x = 0.0, y = 0.0, z = 0.0

// 3. 类型标注
// Declare a variable called welcomeMessage that’s of type String.
var welcomeMessage: String
var red, green, blue: Double
// 我们也可以不使用类型标注，因为swift是类型推断的。

// 插值的方式
print("The current value of friendlyWelcome is \(12+13)")

// 除非你需操作特定长度的整数，否则请尽量在代码中使用 Int 作为你的整数的值类型。

// Double和Float，推荐使用Double

// 类型推断成了Double
let anotherPi = 3 + 0.14159

let decimalInteger = 17 // 十进制
let binaryInteger = 0b10001 // 17 in binary notation 二进制
let octalInteger = 0o21 // 17 in octal notation 八进制
let hexadecimalInteger = 0x11 // 17 in hexadecimal notation 十六进制

// 整数的类型转换，一般情况我们用Int就完了
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//元组，只是适合临时使用，否则创建一个类或结构体来替代
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

// 如果定义的可选值没有设置默认值，系统会给它赋值nil。

// 可选项绑定
//if let constantName = someOptional {
//  statements
//}

















