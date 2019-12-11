// (https://github.com/huos3203)
//

let fir = "\(1)" //CommandLine.arguments[1]
let sec = "\(3)" //CommandLine.arguments[2]
let sym = "*" //CommandLine.arguments[3]
let cal = Calculator()
let result = cal.Operation(fir, second: sec, symbol: sym)
print("计算结果：\(result)")
