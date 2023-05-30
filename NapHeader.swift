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
                    .font(.system(size: 50))
                    .foregroundColor(.indigo)
             Text("recomended nap time: 20 Minutes")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                HStack(alignment: .center){
                   TextField("minutes", text: $NewItemName)
                        .font(.title)
                        .foregroundColor(.blue)
                        .frame(width: 700, height: 75, alignment: .center)
                        .foregroundColor(.blue)
                    Button(action: {
                        let newItem = ANap(name: NewItemName)
                        items.append(newItem)
                        NewItemName = ""
                        
                    }, label: {
                        
                        Image(systemName: "plus.circle")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    })
                }
            }
            .padding()
            .textFieldStyle(.roundedBorder)
        
    }
}

