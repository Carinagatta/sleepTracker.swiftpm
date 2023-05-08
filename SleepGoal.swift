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
    @Binding var age: Int
    @Binding var hoursNeeded: String
    func determineHours() {
        if age < 1 {
            hoursNeeded = "12 - 17"
        }
        else if age < 3 {
            hoursNeeded = "11 - 14"
        }
        else if age < 6 {
            hoursNeeded = "10 - 13"
        }
        else if age < 13 {
            hoursNeeded = "9 - 12"
        }
        else if age < 18 {
            hoursNeeded = "8 - 10"
        }
        else {
            hoursNeeded = "7 - 9"
        }
    }
    var body: some View {
        VStack{
            TextField("Enter your wanted hours", text: $Shours)
            TextField("Enter your wanted minutes", text: $Sminutes)
            Text("Hours\(Shours)")
            Text("Minutes\(Shours)")
            Text("")
            HStack {
                Text("Since you are ")
                Text("\(age)")
                Text(" years old, you need ")
                Text("\(hoursNeeded)")
                Text(" hours of sleep per night.")
            }
        }
    }
}

