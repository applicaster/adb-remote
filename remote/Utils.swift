//
//  Utils.swift
//  ADB Remote
//
//  Created by Anna Bauza on 22/08/2019.
//  Copyright © 2019 Anna Bauza. All rights reserved.
//

import Foundation


@discardableResult
func shell(_ args: String...) -> Int32 {
    let task = Process()
    task.launchPath = "~/Library/Android/sdk/platform-tools/adb"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}
