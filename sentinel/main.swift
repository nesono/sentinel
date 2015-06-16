//
//  main.swift
//  sentinel
//
//  Created by Jochen Issing on 16/06/15.
//  Copyright (c) 2015 Jochen Issing. All rights reserved.
//

import Foundation
import Cocoa
import AppKit

var str = "Hello, playground"

for x in 0...255 {
  let t = Double(x) * sin(Double(x) * M_PI_4/4)
}

var task = NSTask()

task.currentDirectoryPath = "/Users/iss"
task.launchPath = "/bin/ls"

var pipe = NSPipe()
task.standardOutput = pipe

task.launch()

var pipedata = NSData(data: pipe.fileHandleForReading.readDataToEndOfFile())
var result = NSString(data: pipedata, encoding:NSUTF8StringEncoding)

task.waitUntilExit()

println("task returned")
println("\(result)")


