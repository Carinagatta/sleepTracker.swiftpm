//
//  NapList.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

struct NapList: View {
    let currentitem: Assinment
   // @AppStorage("save") var currentitem.name = ""
    @State private var overText = false
    @State private var didTap: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(currentitem.name)
                .font(.system(size:35, weight: .bold, design: .serif))
                .foregroundColor(overText ?.cyan:.indigo)
                .onTapGesture {
                    overText.toggle()
                }
            
        
        Text("Description: \(currentitem.description)")
            .font(.system(size:15, weight: .bold, design: .serif))
            .font(.title3)
            .foregroundColor(overText ?.cyan:.indigo)
        
    }
        }
}
