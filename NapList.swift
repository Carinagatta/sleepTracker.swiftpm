//
//  NapList.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

struct NapList: View {
    let currentitem: ANap
    @State private var overText = false
    var body: some View {
        VStack (alignment: .leading) {
           
            Text("Minutes: \(currentitem.minutes)")
                .font(.title3)
                .foregroundColor(overText ?.pink:.indigo)
                
        }
    }
}
