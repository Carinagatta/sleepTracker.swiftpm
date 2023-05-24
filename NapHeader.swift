//
//  NapHeader.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    @State var NewItemName: String = ""
    @State var NewItemQuantity: Int?
    @State private var overText = false
    @Binding var items: [ANap]
    var body: some View {
      
            VStack{
                Text("Enter Number of Minutes Slept")
                    .font(.title)
                    .foregroundColor(.indigo)
                HStack(alignment: .center){
                    TextField("minutes", text: $NewItemName)
                        .font(.title)
                        .foregroundColor(.indigo)
                        .frame(width: 700, height: 75, alignment: .center)
                        .foregroundColor(.indigo)
                    Button(action: {
                        let newItem = ANap(name: NewItemName)
                        items.append(newItem)
                        NewItemName = ""
                        
                    }, label: {
                        
                        Image(systemName: "plus.circle")
                            .font(.largeTitle)
                            .foregroundColor(.indigo)
                    })
                }
            }
            .padding()
            .textFieldStyle(.roundedBorder)
        
    }
}

