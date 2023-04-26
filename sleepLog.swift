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
        
                
                    List(items,id: \.self) { currentitem in
                        logView(currentitem: currentitem)
                            .foregroundColor(.black)
                            
                        
                    }
                    
                    
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            headerView(items: $items)
                        }
                                   }
                }
               
    }



