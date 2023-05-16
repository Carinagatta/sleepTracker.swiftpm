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
    @State var hoursNeeded: String = ""
    func determineHours(currentAge: Int){
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
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("Hours: \(Shours)")
                        .font(.title)
                        .font(.system(size: 60))
                    Text("Minutes: \(Sminutes)")
                        .font(.title)
                        .font(.system(size: 60))
                }
                TextField("  Enter your wanted hours", text: $Shours)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .font(.title)
                    .frame(width: 400)
                    .font(.system(size: 60))
                    .padding()
                TextField("  Enter your wanted minutes", text: $Sminutes)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .font(.title)
                    .frame(width: 400, height: 20)
                    .padding()
                Spacer()
                Button {
                    determineHours(currentAge: age)
                } label: {
                    Text("Determine how much sleep you need")
                        .frame(width: 400, height: 20)
                        .background(Color.white.opacity(20))
                        .foregroundColor(.black)
                }
                HStack(spacing: 0) {
                    Text("Since you are ")
                    Text("\(age)")
                    Text(" years old, you need ")
                    Text("\(hoursNeeded)")
                    Text(" hours of sleep per night.")
                }
                
            }
            .foregroundColor(.white)
            
        }
    }
}


