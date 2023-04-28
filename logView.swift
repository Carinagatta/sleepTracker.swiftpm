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
                    Text("bed time\(currentitem.bedTime)")
                        .font(.title3)
                    Text("wakeup Time: \(currentitem.wakeupTime)")
                        .font(.title3)
                    Text("hours slep: \(currentitem.hoursSlept)")
                        .font(.title3)
                }
            }
        }
    


