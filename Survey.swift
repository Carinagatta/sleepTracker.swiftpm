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
                Text("Is there liht inyour room when you are trying to sleep")
            }
        }
    }
}

