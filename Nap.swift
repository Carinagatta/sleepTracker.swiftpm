//
//  Nap.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import Foundation
import SwiftUI

struct Nap: View {
    @State var items: [Assinment] = []
   // @AppStorage("woo") var SaveList = ""
    var body: some View {
        
        NavigationView{
            
            List{
                ForEach(items, id: \.self) { currentitem in
                    NapList(currentitem: currentitem)
                }
                .onDelete { offsets in
                    items.remove(atOffsets: offsets)
                }
            }
            
            .background(Color.black)
             .toolbar(content: {
                 
                ToolbarItem(placement: .navigation){
                    NapHeader(items: $items)
                }
                  
            })
        }
        .foregroundColor(.cyan)
       
    }
    func removeItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
