//
//  sleepLog.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct sleepLog: View {
    @State var items: [logItems] = [ ]

    var body: some View {
        
                
        List{
                           
                    
                           
                           ForEach(items, id:\.self) { currentitem in
                               
                               logView(currentitem: currentitem)
                                   
                                  
                           }
                           
                           .onDelete(perform: { indexSet in
                               removeItems(at: indexSet)
                           })
                       }
                       .background(Color.black)
                     
                    
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            headerView(items: $items)
                        }
                                   }
                }
    func removeItems(at offests: IndexSet){
           items.remove(atOffsets: offests)
       }
               
    }



