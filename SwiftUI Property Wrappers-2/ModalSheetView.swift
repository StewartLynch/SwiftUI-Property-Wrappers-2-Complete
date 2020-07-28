//
//  ModalSheetView.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

struct ModalSheetView: View {
    @Binding var isShowing: Bool
    @EnvironmentObject var user: User
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("Lucky Number:")
                    Text("\(user.luckyNumber)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                }
                Button("New Number") {
                    user.luckyNumber = Int.random(in: 11...20)
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.purple)
                .cornerRadius(7)
            }
            .navigationTitle("\(user.name)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Dismiss") {
                        isShowing = false
                    }
                }
            }
        }
    }
}

struct ModalSheetView_Previews: PreviewProvider {
    static var previews: some View {
            ModalSheetView(isShowing: .constant(true)).environmentObject(User(name: "Stewart", luckyNumber: 15))
    }
}
