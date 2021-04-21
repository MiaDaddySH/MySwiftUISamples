import UIKit

print("hello, world")

var myVariable = 53
myVariable = 67
let myConstant = 13

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 90
let explicitFloat: Float = 4

let label = "The width is"
let width = 99
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(oranges + apples) fruits."

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
shoppingList

var occupations = [
  "Malcolm": "Captain",
  "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
occupations

var emptyArry: [String] = []
emptyArry.append("Apple")
emptyArry

let indevidualScores = [75, 43, 103, 87, 98]
var teamScore = 0
for score in indevidualScores{
  if score > 60{
    teamScore += 3
  }else{
    teamScore += 1
  }
}
print(teamScore)


var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello"

greeting = "Hello \(String(describing: optionalName))"
if let name = optionalName {
  greeting = "Hi \(name)"
}else{
  greeting  = "Hi Somebody"
}

let vegetable = "red pepper"
switch vegetable {
  case "celery":
    print("Add some raisins and make ants on a log.")
  case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
  case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
  default:
    print("Everything tastes good in soup.")
}


let interestingNumbers = [
  "Prime": [2, 3, 5, 7, 11, 13],
  "Fibonacci": [1, 1, 2, 3, 5, 8],
  "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
  for number in numbers {
    if number > largest {
      largest = number
      largestKind = kind
    }
  }
}
print(largestKind)
print(largest)


var n = 2
while n < 100 {
  n = n * 2
}
print(n)

var m = 2
repeat {
  m = m * 2
} while m < 100
print(m)

var total = 0
for i in 0 ..< 4{
  total += i
}
print(total)


func greeting(person:String, day:String) -> String {
  return "Hello \(person), today is \(day)."
}

greeting(person: "Martin", day: "Thursday")

func greet(_ person: String, on day: String) -> String {
  return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  
  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }
  
  return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func sums(numbers:Int ...) ->Int {
  var sum = 0
  for number in numbers{
    sum += number
  }
  return sum
}
sums(numbers: 12,12,34,34)

func avarage(numbers: Int ...) ->Double{
  var sum = 0
  for number in numbers{
    sum += number
  }
  return Double(sum)/Double(numbers.count)
}

avarage(numbers: 1,2,3,4,5,6)

func makeIncrementer() -> ((Int) -> Int) {
  func addone (number:Int ) -> Int{
    number + 1
  }
  return addone
}

var inc = makeIncrementer()
inc(2)


func hasAnyMatches(list:[Int], condition: (Int) -> Bool) ->Bool {
  for item in list{
    if condition(item){
      return true
    }
  }
  return false
}

func lessThanTen(number: Int) -> Bool{
  return number < 10
}
var numbers = [20,19,7,12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map { (number:Int) -> Int in
  let result = number + 3
  return result
}
numbers.map{
  $0%2 == 1 ? 0 :$0
}

let mappedNumbers = numbers.map { number in
  return 3*number
}
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

class Shape {
  var numberOfSide = 0
  
  func simpleDescription() -> String {
    return "A shape with \(numberOfSide) sides."
  }
}

var shape = Shape()
shape.numberOfSide = 8
print(shape.simpleDescription())

class NamedShape{
  var numberOfSides = 0
  var name:String
  
  init(name:String) {
    self.name = name
  }
  
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

class Square:NamedShape{
  var sideLength: Double
  
  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }
  func area() ->  Double {
    return sideLength * sideLength
  }
  
  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
  }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle: NamedShape{
  var radius: Double
  
  init(radius: Double, name: String) {
    self.radius = radius
    super.init(name: name)
    numberOfSides = 0
  }
  func area() ->  Double {
    return  Double.pi*radius*radius
  }
  
  override func simpleDescription() -> String {
    return "A circle has radius \(radius)."
  }
}

let circle = Circle(radius: 3, name: "MyCircle")
circle.area()
circle.simpleDescription()

class EquilateralTriangle: NamedShape {
  var sideLength: Double = 0.0
  
  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 3
  }
  
  var perimeter: Double {
    get {
      return 3.0 * sideLength
    }
    set {
      sideLength = newValue / 3.0
    }
  }
  
  override func simpleDescription() -> String {
    return "An equilateral triangle with sides of length \(sideLength)."
  }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


enum Rank: Int {
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  
  func simpleDescription() -> String {
    switch self {
      case .ace:
        return "ace"
      case .jack:
        return "jack"
      case .queen:
        return "queen"
      case .king:
        return "king"
      default:
        return String(self.rawValue)
    }
  }
  
  func  compare(rank1:Rank, rank2:Rank) -> ComparisonResult {
    return rank1.rawValue > rank2.rawValue ? ComparisonResult.orderedAscending:ComparisonResult.orderedDescending
  }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
let threeRawValue = Rank.three.rawValue

if let convertedRank = Rank(rawValue: 1) {
  let threeDescription = convertedRank.simpleDescription()
  print(threeDescription)
}


enum Suit {
  case spades, hearts, diamonds, clubs
  
  func simpleDescription() -> String {
    switch self {
      case .spades:
        return "spades"
      case .hearts:
        return "hearts"
      case .diamonds:
        return "diamonds"
      case .clubs:
        return "clubs"
    }
  }
  
  func color() -> String{
    switch  self {
      case .spades,.clubs:
        return "black"
      case .hearts,.diamonds:
        return "red"
    }
  }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()


enum ServerResponse {
  case result(String, String)
  case failure(String)
  
  func description() -> String {
    switch self {
      case let .result(sunrise, sunset):
        return "Sunrise is at \(sunrise) and sunset is at \(sunset)."
      case let .failure(message):
        return "Failure...  \(message)"
    }
  }
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

//switch success {
//  case let .result(sunrise, sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//  case let .failure(message):
//    print("Failure...  \(message)")
//}
print(success.description())
print(failure.description())
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."


struct Card {
  var rank: Rank
  var suit: Suit
  
  static func createCards() -> [Card] {
    var result : [Card] = []
    for rank in 1 ..< 14{
      result.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .clubs))
      result.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .diamonds))
      result.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .hearts))
      result.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .spades))
    }
    return result
  }
  func simpleDescription() -> String {
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

let cards = Card.createCards()

protocol ExampleProtocol {
  var simpleDescription: String { get }
  mutating func adjust()
}

class SimpleClass: ExampleProtocol{
  var simpleDescription: String = "A very simple class."
  var anotherProperty: Int = 69105
  
  func adjust() {
    simpleDescription += "  Now 100% adjusted."
  }
}

var a  = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


struct SimpleStructure:ExampleProtocol {
  var simpleDescription: String = "A simple structure"
  
  mutating func adjust() {
    simpleDescription += " (adjusted)"
  }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//extension Int: ExampleProtocol {
//  var simpleDescription: String {
//    return "The number \(self)"
//  }
//  mutating func adjust() {
//    self += 42
//  }
//}
//print(8.simpleDescription)

extension Double {
  var absoluteValue: Double{
    return abs(self)
  }
}

print((-0.8).absoluteValue)

var protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
protocolValue = b
print(protocolValue.simpleDescription)

let values: [ExampleProtocol] = [a, b]
for value in values{
  print(value.simpleDescription)
}


enum PrinterError:Error{
  case outOfPaper
  case noToner
  case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
  if printerName == "Never Has Toner" {
    throw PrinterError.noToner
  }
  return "Job sent"
}

do {
  let printerResponse = try send(job: 12, toPrinter: "Never Has Toner")
  print(printerResponse)
}catch PrinterError.noToner {
}catch {
  print(error)
}

do {
  let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
  print(printerResponse)
} catch PrinterError.onFire {
  print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError).")
} catch {
  print(error)
}

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
  fridgeIsOpen = true
  defer {
    fridgeIsOpen = false
  }
  
  let result = fridgeContent.contains(food)
  return result
}

fridgeContains("milk")
print(fridgeIsOpen)


func makeArray<Item>(repeating item: Item, numberOfTimes: Int ) -> [Item] {
  var result = [Item]()
  for _ in 0 ..< numberOfTimes {
    result.append(item)
  }
  return result
}
makeArray(repeating: "knock", numberOfTimes: 9)

enum OptionalValue <Wrapped> {
  case none
  case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element
{
  for lhsItem in lhs {
    for rhsItem in rhs {
      if lhsItem == rhsItem {
        return true
      }
    }
  }
  return false
}
anyCommonElements([1, 2, 3], [3])
