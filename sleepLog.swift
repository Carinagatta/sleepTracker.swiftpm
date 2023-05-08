//
//  sleepLog.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct sleepLog: View {
    @State var items: [logItems] = sleepManager().getitems()
    @Binding var Shours:String
    @Binding var Sminutes:String
    @Binding var newItembedTime:String
    @Binding var newItemWakeupTime:String
    @Binding var newItemhoursSlept:String

    var body: some View {
        NavigationView(content: {
            
    
            
            
            
            List{
               
               Text("Sleep goal \(Shours) hours and \(Sminutes) minutes")
                                        .italic()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .listRowBackground(Color.blue)
                
                ForEach(items, id:\.self) { currentitem in
                    
                    logView(currentitem: currentitem)
                    
                        .listRowBackground(Color.blue.opacity(0.9))
                }
               
                .onDelete(perform: { (indexSet) in
//                    removeItems(at: indexSet)
                    if let index = indexSet.first {
                        self.items.remove(at: index)
                        }
                    sleepManager().setitems(items: items)
                })
            }
            
           
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    headerView(items: $items,newItembedTime: $newItembedTime,newItemWakeupTime: $newItemWakeupTime, newItemhoursSlept: $newItemhoursSlept)
                }
            }
            .onAppear(perform: {
                items = sleepManager().getitems()
            
                       })
    })
        
    }
    func removeItems(at offests: IndexSet){
        items.remove(atOffsets: offests)
    }
    
}



