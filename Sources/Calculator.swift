#!/usr/bin/swift
/*
 * jisuanqi.swift
 * Created by admin on 2019-01-24.
 *
 * Copyright (C) 2019 admin <admin@bogon>
 * Distributed under terms of the MIT license.
 */

/*:
 功能描述:
传入两个数字和一个字符，返回计算结果。
支持：加，减，乘，除
知识点：封装/继承/多态
 - 主要接口:
 ```
 接口
 ```
 - 主要构造器:
 ```
 构造器
 ```
 - 模块
 */
import Foundation
class Calculator 
{
    var first:String,second:String
    //MARK:- override
    
    //MARK:- api
    public func Operation(first:String,second:String,symbol:String) -> Int {
        var num:Int
        self.first = first
        self.second = second
        switch symbol {
        case "+":
            num = add()
        case "-":
            num = sub()
        case "*":
            num = multiply()
        case "/":
            num = division()
        default:
            num = add()
        }
        return num
    }
    
    //MARK:- private
    func add() -> Int {
        
        return  Int(first) + Int(second)
    }
    
    func sub() -> Int {
        return Int(first) - Int(second)
    }
    
    func multiply() -> Int {
        return Int(first) * Int(second)
    }
    
    func division() -> Int {
        return Int(first) / Int(second)
    }
    //MARK:-  getter / setter
}

let fir = CommandLine.arguments[1]
let sec = CommandLine.arguments[2]
let sym = CommandLine.arguments[3]
let cal = Calculator()
cal.Operation(fir,sec,sym)

