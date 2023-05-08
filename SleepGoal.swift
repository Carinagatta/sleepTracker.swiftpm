//
//  SleepGoal.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import Foundation
import SwiftUI

struct SleepGoal: View {
    @Binding var Shours:String
    @Binding var Sminutes:String
    var body: some View {
        VStack{
                    TextField("enter your wanted hours", text: $Shours)
                    TextField("enter your wanted minutes", text: $Sminutes)
                    Text("Hours \(Shours)")
                    Text("Minutes \(Shours)")
        }
        
    }
}

