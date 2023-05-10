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
            TextField("Wakeup Time", text: $newItemWakeupTime)
            
            
            TextField("Bed Time", text: $newItembedTime)
            
            TextField("Time Slept", text: $newItemhoursSlept)
            
            
            
            Button(action: {

//                let newItem = logItems(bedTime: newItembedTime, wakeupTime: newItemWakeupTime, hoursSlept: newItemhoursSlept)
                    updateArray()
                
                
                
            }, label: {
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            })
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        
    }
    func updateArray() {
          let newitem = logItems(bedTime: newItembedTime, wakeupTime: newItemWakeupTime, hoursSlept: newItemWakeupTime)
          items.append(newitem)
          
        sleepManager().setitems(items: items)
          
          newItembedTime = ""
        newItemhoursSlept = ""
        newItemWakeupTime = ""
          
          
      }
}

