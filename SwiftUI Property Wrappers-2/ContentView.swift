//
//  ContentView.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject  var user: User
    @State private var presentModal = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("Lucky Number:")
                    Text("\(user.luckyNumber)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                }
                Group {
                    Button("New Number") {
                        user.luckyNumber = Int.random(in: 1...10)
                    }
                    Button("Show Modal") {
                        presentModal = true
                    }
                    .sheet(isPresented: $presentModal) {
                        ModalSheetView(isShowing: $presentModal).environmentObject(user)
                    }
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.blue)
                .cornerRadius(7)
            }
            .navigationTitle("\(user.name)")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink(destination: NavDestinationView()) {
                        Text("Go Next")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(User(name: "Stewart", luckyNumber: 3))
    }
}
