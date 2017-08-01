//
//  main.swift
//  tc
//
//  Created by Lex on 12/16/15.
//  Copyright © 2015 LexTang.com. All rights reserved.
//

import Foundation

func main(_ arguments: [String]) {
    guard let HOME = ProcessInfo.processInfo.environment["HOME"] else {
        return
    }
    let path = "\(HOME)/github/MMDB-Swift/MMDB/GeoLite2-Country.mmdb"
    guard let db = MMDB(path) else {
        print("failed to open db.\(path)")
        return
    }
    
    if let country = db.lookup("8.8.8.8") {
        print(country)
    } else {
        print("nothing found.")
    }
}

main(CommandLine.arguments)
