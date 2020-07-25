//
//  ModalSheetView.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

import SwiftUI

struct ModalSheetView: View {
    var number: Int = 11
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("Lucky Number:")
                    Text("\(number)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                }
                Button("New Number") {
                    
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.purple)
                .cornerRadius(7)
            }
            .navigationTitle("Modal Sheet View")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Dismiss") {
                        
                    }
                }
            }
        }
    }
}

struct ModalSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheetView()
    }
}
