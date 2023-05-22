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
        
        
        VStack{
            
            Text("Goal")
                .font(.system(size: 90))
                .shadow(radius: 10)
                .offset(y:-200)
            Text("Enter the Amount of hours and Minutes you Want to Sleep")
                .font(.system(size: 30))
                .offset(y:-190)
            Text("------------------------------------------------------------")
                .offset(y:-180)

            HStack{
                Text(" You want \(Shours) hours and")
                //                    .font(.title)
                
                Text("\(Sminutes) minutes")
                //                    .font(.title)
                
            }
            .font(.system(size: 50))
            .offset(y: -140)
            
            HStack{
                TextField("H", text: $Shours)
                //                    .font(.title)
                    .frame(width: 200, height: 200)
                    .background(Color.blue)
                    .cornerRadius(20)
                //                    .font(.system(size: 60))
                    .padding()
                    .multilineTextAlignment(.center)
                TextField("M", text: $Sminutes)
                //                    .font(.title)
                    .frame(width: 200, height: 200)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding()
                    .multilineTextAlignment(.center)
            }
            .font(.system(size: 80))
            .offset(y: -120)
            
            Button {
                determineHours(currentAge: age)
            } label: {
                Text("Determine how much sleep I should get")
                    .frame(width: 600, height: 28)
                    .background(Color.white.opacity(20))
                    .foregroundColor(.black)
                    .cornerRadius(15)
                    .font(.system(size: 30))
            }
            .offset(y: -105)
            VStack(spacing: 10) {
                Text("Since you are \(age) years old")
                    .offset(y:130)
                    .font(.title)
                Text("you need \(hoursNeeded) hours of sleep per night")
                    .offset(y:130)
                    .font(.title)
            }
            .offset(y: -90)
            
            
            .foregroundColor(.white)
            .scaleEffect(1.5)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(.white)
    }
    
    }

