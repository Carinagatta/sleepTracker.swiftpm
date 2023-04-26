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
          
                VStack(alignment:.leading){
                    Text(currentitem.bedTime)
                        .font(.largeTitle)
                    Text("wakeup Time: \(currentitem.wakeupTime)")
                        .font(.title3)
                }
            }
        }
    


