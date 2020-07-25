//
//  SwiftUI_Property_Wrappers_2App.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

@main
struct SwiftUI_Property_Wrappers_2App: App {
    let user = User(name: "Stewart", luckyNumber:  12)
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(user)
        }
    }
}
