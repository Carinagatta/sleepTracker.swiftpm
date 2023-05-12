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
            Color.black
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .top)
                    Text("Sleep Tips")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                }
                Text("Make sure there is as little light as possible in your sleep enviornment. You can also dim yout lights before about an hour before you sleep.")
                    .frame(width: 600, height: 150)
                    .foregroundColor(.white)
                    .font(.title)
                Text("Make sure its as quiet as possible when you are trying to sleep. Having a quiet calm enviornment is verry benefitial. You can also try listening to  a soundscape or sleep music.")
                    .frame(width: 600, height: 150)
                    .foregroundColor(.white)
                    .font(.title)
                Text("Make sure to not use your phone at least an hour before sleeping. Not only is the blue light electromics produce harmful to your eyes, but it also stops the production of meletonin.")
                    .frame(width: 600, height: 150)
                    .foregroundColor(.white)
                    .font(.title)
             
                Text("Your body temp lowers when you sleep, and so should your room temp. Try to keep it between 60 and 67 degrees farenheight.")
                    .frame(width: 600, height: 150)
                    .foregroundColor(.white)
                    .font(.title)
                Text("Dont exerscise less than an hour before bed. Exerscising wakes up your body and makes it harder to sleep.")
                    .frame(width: 600, height: 150)
                    .foregroundColor(.white)
                    .font(.title)
                Text("Take naps during the day, but don't make them any longer than 20 minutes.")
                    .frame(width: 600, height: 150)
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
    }
}
