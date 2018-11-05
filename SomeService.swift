//
//  SomeService.swift
//  DependencyInjectio
//
//  Created by Sriram Prasad on 05/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit
class SomeService     {
    private init() {}
    static let shared  = SomeService()
    func doSomeStuff(){
        print("doSomeStuff")
    }
}
