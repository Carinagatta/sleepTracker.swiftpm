//
//  NapHeader.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

struct NapHeader: View {
    //@State var NewItemName: String = ""
    @Binding var NewItemQuantity: String
   // @State private var overText = false
    @Binding var items: [ANap]
    var body: some View {
        HStack{
            TextField("Enter QUANTITY", text: $NewItemQuantity)
                .foregroundColor(.purple)

            Button(action: {
//                guard let unwrappedQuantity = NewItemQuantity else {
//                    return }
                let newItem = ANap(minutes: NewItemQuantity)
                items.append(newItem)
//                NewItemQuantity = nil
                
                updateArray()
            }, label: {

                Image(systemName: "plus.circle")
                    .font(.largeTitle)
            })
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        
            }
    func updateArray() {
          let newitems = ANap(minutes: NewItemQuantity)
          items.append(newitems)
          
        NapManager().setitem(items: items)
          
         NewItemQuantity = " "
       
          
          
      }
}

