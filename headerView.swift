//
//  headerView.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct headerView: View {
    @Binding var items :[logItems]
       @State var newItembedTime: String = ""
       @State var newItemWakeupTime: String = ""
    @State var newItemhoursSlept: String = ""
    var body: some View {
        HStack{
                   TextField("enter wakeup time", text: $newItemWakeupTime)
                       .foregroundColor(.cyan)
                      
                   TextField("enter bed time", text: $newItembedTime)
                       .foregroundColor(.cyan)
            TextField("enter time slept", text: $newItemhoursSlept)
                .foregroundColor(.cyan)
            
            
                   Button(action: {
                      
                       let newItem = logItems(bedTime: newItembedTime, wakeupTime: newItemWakeupTime, hoursSlept: newItemhoursSlept)
                       items.append(newItem)
                       newItembedTime = ""
                       newItemWakeupTime = ""
                       newItemhoursSlept = ""
                   }, label: {
                       Image(systemName: "plus.circle")
                           .font(.largeTitle)
                   })
               }
               .padding()
               .textFieldStyle(.roundedBorder)
    }
}

