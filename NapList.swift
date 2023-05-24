//
//  NapList.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

struct ListView: View {
    let currentitem: ANap
    @State private var overText = false
    var body: some View {
        VStack (alignment: .leading) {
                        Text(currentitem.name)
                            .font(.largeTitle)
                            .foregroundColor(overText ?.pink:.indigo)
                            .onHover{ over in
                                overText = over
                            }
//            Text("Quantity: \(currentitem.quantity)")
//                .font(.title3)
//                .foregroundColor(overText ?.pink:.indigo)
//                .onHover{ over in
//                    overText = over
//                }
        }
    }
    
}
