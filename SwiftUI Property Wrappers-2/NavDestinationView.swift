//
//  NavDestinationView.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

struct NavDestinationView: View {
    @EnvironmentObject var user: User
    var body: some View {
            VStack(spacing: 20) {
                HStack {
                    Text("Lucky Number")
                    Text("\(user.luckyNumber)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                }
                Button("New Number") {
                    user.luckyNumber = Int.random(in: 21...30)
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.green)
                .cornerRadius(7)
            }
            .frame(width: 200)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) { // <3>
                    VStack {
                        Text("User Name").font(.subheadline)
                        Text("\(user.name)").font(.headline)
                    }
                }
            }
    }
}

struct NavDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavDestinationView().environmentObject(User(name: "Stewart", luckyNumber: 25))
        }

    }
}
