import UIKit


//================================================================================
// PREFACE to the TEST
//================================================================================

var highest_score = 100.0
var nQuestion = 1

func no_answer() {
  highest_score -= 2.5
  print("NO ANSWER -- highest possible now \(highest_score)%\n\n\n")
}

func separator() {  print("//=================================================================================");
}

func header(label: String) {
  separator();
  print("//\(label)");
  separator();
}

func question(_ n: inout Int, text: String) {
  separator();
  print("// Question \(n)\n//");
  print("// \(text)\n//")
  n += 1
  separator();
}


//================================================================================
// TEST BEGINS.............
//================================================================================


question(&nQuestion,        //  ------------------- QUESTION 1 -----------------
         text: "Write out the formula for reversing the String 'Call me Ishmael'.")
var ish = "Call me Ishmael"

// TODO .......................................

print(String(ish.reversed()))
print("\n\n");



question(&nQuestion,        //  ------------------- QUESTION 2 -----------------
         text: "Print 'China' using its two unicode chars: unicode 4e2d and 570d")

// TODO .......................................
print("\u{4e2d}\u{570d}")


print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 3 -----------------4
         text: "Convert the following String to all uppercase: 'cal state fullerton'.")

// TODO .......................................
var csuf = "cal state fulerton"
csuf = csuf.uppercased()
print(csuf)
print("\n\n")



question(&nQuestion,        //  ------------------- QUESTION 4 -----------------
         text: "Change all of the vowels (a,e,i,o,u, and y) to be ‘Z’.")
let word = "sUpErcAlifragilisticexpialadotiOUs"

// TODO .......................................

var newWord = word.replacingOccurrences(of: "[aeiouy]", with: "Z", options: [.regularExpression, .caseInsensitive])
print(newWord)

print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 5 -----------------
         text: "Determine if the following String has the prefix or suffix '__': __add__.")
var sadd = "__add__"
let pre = "__"

// TODO .......................................
if(sadd.hasPrefix("__")) {
    print(sadd + " has prefix: __")
}
if(sadd.hasSuffix("__")) {
    print(sadd + " has prefix: __")
}
print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 6 -----------------
         text: "Create a switch statement that handles the following ranges of error codes:\n100 or 101: \"Informational, 1xx\"\n204: \"Successful but no content, 204\"\n300 to 307: \"Redirection: 3xx\"\n400 to 505: \"Server error\"\notherwise: \"Unknown error. Please retry\"")
func handleError(_ code: Int) {
  print("handling error code: \(code)... ===> ", terminator: " ")
  switch(code) {

// TODO .......................................
    
  case 100, 101:
    print("Informational, 1xx")
    
  case 204:
    print("Successful but no content, 204")
    
  case 300...307:
    print("Redirection: 3xx")
    
  case 400...505:
    print("Server error")
  
  default:
    print("Unknown error. Please retry");
  }
}
print("\n")
handleError(101)
handleError(204)
handleError(303)
handleError(306)
handleError(500)
handleError(600)
print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 7 -----------------
         text: "Write a function that takes a variable number of integers, and returns a tuple containing (minimum: Int, maximum: Int).")
func minmax(_ numbers: Int...) -> (min: Int, max: Int) {

  // TODO .......................................
    
    var min = numbers[0]
    var max = numbers[0]
    
    for i in numbers{
        if(min > i){
            min = i
        }
        if(max < i){
            max = i
        }
    }
    
  return (min, max)
}
print("(min, max) of 1,2,4,5,6,7,8 is: \(minmax(1,2,3,4,5,6,7,8))\n\n")




question(&nQuestion,        //   ------------------- QUESTION 8 -----------------
         text: "Write a function called siftBeans(fromGroceryList:) that takes a grocery list [String], and splits it into two lists, one with beans, and one without. Example: let result = siftBeans(fromGroceryList: [\'green beans\', 'milk', 'black beans', 'pinto beans',  'apples'])      result.beans == [\"green beans\", \"black beans\", \"pinto beans\"]    result.otherGroceries == [\"milk\", \"apples\"]    Hint:  use hasSuffix(_:).\n")
func siftBeans(_ fromGroceryList: [String]) -> (beans: [String], notbeans: [String]) {

    // TODO .......................................
    var beans = [String]()
    var notbeans = [String]()
    for i in fromGroceryList{
        if(i.hasSuffix("beans")){
            beans.append(i)
        }else{
            notbeans.append(i)
        }
    }
    
    
  return (beans, notbeans)
}
print("\nrunning function siftBeans()...")
let result = siftBeans(["green beans", "milk", "black beans", "pinto beans", "apples"])
print("result.beans = \(result.beans)")
print("result.notbeans = \(result.notbeans)\n")

