//
//  NapHeader.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

struct NapHeader: View {
    @State var NewItemName: String = ""
    @State var NewItemQuantity: Int?
    @State private var overText = false
    @Binding var items: [ANap]
    var body: some View {
        HStack{
            TextField("Enter QUANTITY", value: $NewItemQuantity, format: .number)
                .foregroundColor(.purple)

            Button(action: {
                guard let unwrappedQuantity = NewItemQuantity else {
                    return }
                let newItem = ANap(minutes: unwrappedQuantity)
                items.append(newItem)
                NewItemQuantity = nil
            }, label: {

                Image(systemName: "plus.circle")
                    .font(.largeTitle)
            })
        }
        .padding()
        .textFieldStyle(.roundedBorder)
            }
}

