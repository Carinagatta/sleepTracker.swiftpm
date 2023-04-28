//
//  sleepLog.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct sleepLog: View {
    @State var items: [logItems] = []
//    @Binding var Shours:String
//    @Binding var Sminutes:String
    var body: some View {
        NavigationView(content: {
            
    
            
            
            
            List{
                
//               Text("Sleep log:           Sleep goal\(Shours) hours and\(Sminutes) minutes")
//                                        .italic()
//                                        .foregroundColor(.white)
//                                        .font(.title)
//                                        .listRowBackground(Color.blue)
                
                ForEach(items, id:\.self) { currentitem in
                    
                    logView(currentitem: currentitem)
                    
                    
                        .listRowBackground(Color.blue.opacity(0.9))
                }
                
                .onDelete(perform: { indexSet in
                    removeItems(at: indexSet)
                })
            }
            
           
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    headerView(items: $items)
                }
            }
    })
        
    }
    func removeItems(at offests: IndexSet){
        items.remove(atOffsets: offests)
    }
    
}



