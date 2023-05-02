//
//  headerView.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct headerView: View {
    @Binding var items :[logItems]
       @State var newItembedTime: String = UserDefaults.standard.string(forKey: "bedTimeHours") ?? ""
       @State var newItemWakeupTime: String = UserDefaults.standard.string(forKey: "wakeupHour") ?? ""
    @State var newItemhoursSlept: String = UserDefaults.standard.string(forKey: "HoursSlept") ?? ""
    var body: some View {
        HStack{
                   TextField("wakeup time", text: $newItemWakeupTime)
                      
                      
                   TextField("bed time", text: $newItembedTime)
                       
            TextField("time slept", text: $newItemhoursSlept)
              
            
            
                   Button(action: {
                      
                       let newItem = logItems(bedTime: newItembedTime, wakeupTime: newItemWakeupTime, hoursSlept: newItemhoursSlept)
                       items.append(newItem)
                       newItembedTime = ""
                       newItemWakeupTime = ""
                       newItemhoursSlept = ""
                       UserDefaults.standard.string(forKey: "bedTimeHours")
                       UserDefaults.standard.string(forKey: "wakeupHour")
                       UserDefaults.standard.string(forKey: "HoursSlept")
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

