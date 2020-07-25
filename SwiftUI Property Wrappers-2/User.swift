//
//  User.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

class User: ObservableObject {
    @AppStorage("lastNumber") var lastNumber:Int = 12
    internal init(name: String, luckyNumber: Int) {
        self.name = name
        self.luckyNumber = lastNumber
    }
    
    var name: String
    @Published var luckyNumber: Int = 0 {
        didSet {
            lastNumber = luckyNumber
        }
    }
    
}
