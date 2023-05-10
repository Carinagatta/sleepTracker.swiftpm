//
//  logView.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI


struct logView: View {
    let currentitem: logItems
    var body: some View {
          
                HStack{
                    Text("Bed Time: \(currentitem.bedTime)")
                        .font(.title3)
                    Text("Wakeup Time: \(currentitem.wakeupTime)")
                        .font(.title3)
                    Text("Hours slept: \(currentitem.hoursSlept)")
                        .font(.title3)
                }
            }
        }
    


