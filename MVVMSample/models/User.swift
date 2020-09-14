//
//  User.swift
//  MVVMSample
//
//  Created by julio cezar kenji Miyahira on 14/09/20.
//  Copyright © 2020 br.com.miyahira. All rights reserved.
//

import Foundation

class User {
    
    var name : String?
    
    var age : Int?
    
    var birthDay : String?
    
    init(name: String, age: Int, birthDay: String) {
        self.name = name;
        self.age = age;
        self.birthDay = birthDay
    }
}
