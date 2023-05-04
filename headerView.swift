//
//  headerView.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct headerView: View {
    @Binding var items :[logItems]
    @Binding var newItembedTime:String
    @Binding var newItemWakeupTime:String
    @Binding var newItemhoursSlept:String
    var body: some View {
        HStack{
            TextField("wakeup time", text: $newItemWakeupTime)
            
            
            TextField("bed time", text: $newItembedTime)
            
            TextField("time slept", text: $newItemhoursSlept)
            
            
            
            Button(action: {

                let newItem = logItems(bedTime: newItembedTime, wakeupTime: newItemWakeupTime, hoursSlept: newItemhoursSlept)
                items.append(newItem)
//                newItembedTime = ""
//                newItemWakeupTime = ""
//                newItemhoursSlept = ""
                
            }, label: {
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            })
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        
    }
}

