func precedence(of op: Character) -> Int {
    switch op {
        case "+", "-": return 1
        case "*", "/": return 2
        default: return 0
    }
}

var operatorStack: [Character] = []
var infixQueue: [Character] = []
var operation: String = "5*4+3"

for charT in operation {
    if(charT.isNumber){
        infixQueue.append(charT)
    } else {
        if charT == "(" {
            operatorStack.append(charT)
        }
        
        if charT == ")" {
            while let last = operatorStack.last, last != "(" {
                infixQueue.append(operatorStack.popLast()!)
            }

            if operatorStack.last == "(" {
                operatorStack.popLast()
            }
            
        }
        

        if charT != "(" && charT != ")" {
            while operatorStack.isEmpty == false
                   && operatorStack.last != nil
                   && operatorStack.last != "("
                   && operatorStack.last != ")"
                   && precedence(of: charT) <= precedence(of: operatorStack.last!)
            {
                infixQueue.append(operatorStack.popLast()!)
                
            }
            operatorStack.append(charT)
            
        }

    }
}

let finalOperator = operatorStack.popLast()
infixQueue.append(finalOperator!)

print(infixQueue)
