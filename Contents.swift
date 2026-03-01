
/**
 Function for infix, preparation for postfix computation
 */
func precedence(of op: Character) -> Int {
    switch op {
        case "+", "-": return 1
        case "*", "/": return 2
        default: return 0
    }
}

var operatorStack: [Character] = []
var infixQueue: [String] = []
var operation: String = "52*4+3-21"
var numberSeriesHolder: String = ""
var pushToQueue: Bool = false

var index = operation.startIndex

while index < operation.endIndex {
    let charHolder = operation[index]
    
    if(charHolder.isNumber){
        let nextCheck = operation.index(after: index)
        
    }
    
    index = operation.index(after: index)

}
//for charT in operation {
//    if(charT.isNumber){
//        numberSeriesHolder = !infixQueue.isEmpty ? infixQueue.removeLast() : ""
//        print(numberSeriesHolder)
//        numberSeriesHolder.append(charT)
//        
//        infixQueue.append(numberSeriesHolder)
//    } else {
//        numberSeriesHolder = ""
//        print(numberSeriesHolder)
//        
//        if charT == "(" {
//            operatorStack.append(charT)
//        }
//        
//        if charT == ")" {
//            while let last = operatorStack.last, last != "(" {
//                infixQueue.append(String(operatorStack.popLast()!))
//            }
//
//            if operatorStack.last == "(" {
//                operatorStack.popLast()
//            }
//            
//        }
//        
//        if charT != "(" && charT != ")" {
//            while operatorStack.isEmpty == false
//                   && operatorStack.last != nil
//                   && operatorStack.last != "("
//                   && operatorStack.last != ")"
//                   && precedence(of: charT) <= precedence(of: operatorStack.last!)
//            {
//                infixQueue.append(String(operatorStack.popLast()!))
//                
//            }
//            operatorStack.append(charT)
//            
//        }
//    }
//}

//let finalOperator = operatorStack.popLast()
//infixQueue.append(String(finalOperator!))
//
////print(operatorStack)
//print(infixQueue)


/**
 Postfix computation
 */

//var postfixStack: [Character] = []
//var right: String = ""
//var left: String = ""
//var op: Character = " "
//
//for charT in infixQueue {
//    right = ""
//    left = ""
//    op = " "
//    
//    if charT.isNumber {
//        postfixStack.append(charT)
//    } else {
//        
//    }
//}
