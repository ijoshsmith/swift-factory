//
//  main.swift
//  SwiftFactory
//
//  Created by Joshua Smith on 6/4/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

let namespace = "SwiftFactory"

typealias PersonFactory = ObjectFactory<Person>

func createPersonWithClassName(
    className:  String!,
    personName: String? = nil)
{
    let qualifiedName = "\(namespace).\(className)"
    if personName != nil
    {
        if let person = PersonFactory.createInstance(
            className:   qualifiedName,
            initializer: "initWithName:",
            argument:    personName!)
        {
            println("\(className) name = \(person.name)");
        }
    }
    else
    {
        if let person = PersonFactory.createInstance(
            className: qualifiedName)
        {
            println("Created a \(className)");
        }
    }
}

createPersonWithClassName("Stranger")
createPersonWithClassName("Friend", personName: "Steve")
