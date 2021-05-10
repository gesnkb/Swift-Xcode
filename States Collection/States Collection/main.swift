//
//  main.swift
//  States Collection
//
//  Created by Scott Sanders on 2/9/21.
//

import Foundation

var states = [String: String] ()
states["MO"] = "Missouri"
states["PA"] = "Pennsylvannia"
states["CA"] = "California"

//let newStates =

for (key, value) in states{
    print("\(key)", "is", "\(value)")
}

let stateCodes = states.keys

for abbrv in stateCodes{
    print(abbrv)
}

states ["PA"] = nil
states.removeValue(forKey: "MO")

for (key, value) in states{
    print("\(key)", "is", "\(value)")
}


