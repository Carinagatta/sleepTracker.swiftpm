//
//  NapHeader.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/4/23.
//

import Foundation
import SwiftUI

    struct HeaderView: View {
        //@State var save = UserDefaults.standard.string(forKey: "Assinment")
        
        @State var Class: String = ""
        @State var Description: String = ""
        @State private var overText = false
        @Binding var items: [Assinment]
        var body: some View {
            VStack{
                
                HStack{
                    TextField("Class", text: $Class)
                        .frame(width: 150)
                        .foregroundColor(.indigo)
                   .font(.system(size:15, weight: .bold, design: .serif))
                    
                    TextField("Description", text: $Description)
                        .frame(width: 150)
                        .foregroundColor(.indigo)
                    .font(.system(size:15, weight: .bold, design: .serif))
                   
                    
                    Button(action: {
                        let newItem = Assinment (name: Class, description: Description)
                        items.append(newItem)
                        Class = ""
                        Description = ""
                       // UserDefaults.standard.set(save, forKey: "Assinment")
                    }, label: {
                        Image(systemName: "plus.circle")
                            .font(.largeTitle)
                    })
                }
                Text("Click assinment when done")
                    .font(.caption)
            }
            .padding()
            .textFieldStyle(.roundedBorder)
                }
}
