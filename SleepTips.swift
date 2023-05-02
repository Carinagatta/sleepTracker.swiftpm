//
//  SleepTips.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/28/23.
//

import Foundation
import SwiftUI

struct SleepTips: View {
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.black)
           
            
            VStack{
                Rectangle()
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, maxHeight: 100, alignment: .top)
                Text("Make sure there is as little light as possible in your sleep enviornment")
                    .foregroundColor(.white)
                Text("Make sure its as quiet as possible when you are trying to sleep")
                    .foregroundColor(.white)
                Text("Make sure to not use your phone at least an hour before sleeping")
                    .foregroundColor(.white)
                Text("Your body temp lowers when you sleep and so should your room temp. Try to keep it between 60 and 67 degrees farenheight.")
                    .foregroundColor(.white)
                Text("Dont exerscise less than an hour before bed. Exerscising wakes up your body and makes it harder to sleep.")
                    .foregroundColor(.white)
                Text("Take naps during the day but dont make them any longer than 20 minutes.")
                    .foregroundColor(.white)
            }
        }
    }
}
