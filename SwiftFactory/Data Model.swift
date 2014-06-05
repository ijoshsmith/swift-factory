//
//  Class Hierarchy.swift
//  SwiftFactory
//
//  Created by Joshua Smith on 6/4/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

// Subclass NSObject to enable factory creation.
class Person : NSObject
{
    init()             { self.name = "?"  }
    init(name: String) { self.name = name }
    
    var name: String
}

class Friend : Person
{
    var nickname : String?
}

class Stranger : Person
{
    // Ooh, how misanthropic!
    var seemsFriendly = false
}
