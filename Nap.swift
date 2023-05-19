//
//  Nap.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import Foundation
import SwiftUI

struct Nap: View {
    @Binding var items: [ANap] 
    
    var body: some View {
        NavigationView{
            
            List(items, id: \.self) { currentitem in
                NapList(currentitem: currentitem)
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigation){
                    NapHeader(NewItemQuantity: <#T##Binding<String>#>, items: <#T##Binding<[ANap]>#>)
                }
            })
            
        }
        .navigationViewStyle(.stack)
    }
}
    
