//
//  SleepGoal.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import Foundation
import SwiftUI

struct SleepGoal: View {
    @Binding var Shours:  String
    @Binding var Sminutes: String
    @Binding var age: Int
    @Binding var hoursNeeded: String
    func determineHours(currentAge: Int){
        if age < 1 {
            let hoursNeeded = "12 - 17"
        }
        else if age < 3 {
            let hoursNeeded = "11 - 14"
        }
        else if age < 6 {
            let hoursNeeded = "10 - 13"
        }
        else if age < 13 {
            let hoursNeeded = "9 - 12"
        }
        else if age < 18 {
            let hoursNeeded = "8 - 10"
        }
        else {
            let hoursNeeded = "7 - 9"
        }
    }
    var body: some View {
        VStack{
            TextField("Enter your wanted hours", text: $Shours)
                .padding()
            TextField("Enter your wanted minutes", text: $Sminutes)
                .padding()
            Text("Hours: \(Shours)")
            Text("Minutes: \(Shours)")
            Text("")
            Button {
                determineHours(currentAge: age)
            } label: {
                Text("Determine how much sleep you need")
            }
            HStack(spacing: 10) {
                Text("Since you are")
                Text("\(age)")
                Text("years old, you need")
                Text("\(hoursNeeded)")
                Text("hours of sleep per night.")
            }
        }
    }
}


