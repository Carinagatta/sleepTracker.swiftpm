//
//  Survey.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import Foundation
import SwiftUI

struct Survey: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.black)
            Rectangle()
                .foregroundColor(.indigo)
                .frame(width: 100, height: 100)
            VStack{
                Text("Sleep Survey")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("Is there light in your room when you are trying to sleep")
                    .foregroundColor(.white)
                Text("Is your room quiet when you are tryig to sleep?")
                    .foregroundColor(.white)
                Text("Do you use your phone right before you are trying to sleep?")
                    .foregroundColor(.white)
                Text("is your room between 60 to 67 degreed Farengeight when you are trying to sleep?")
                    .foregroundColor(.white)
                Text("Do you exerscise less than an hour before going to sleep?")
                    .foregroundColor(.white)
                Text("Do you take neps 20 minutes or less before bed?")
                    .foregroundColor(.white)
                
            }
        }
    }
}

