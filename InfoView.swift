//
//  IntroView.swift
//  sleepTracker
//
//  Created by Sara Grabowski on 4/24/23.
//

import SwiftUI

struct InfoView: View {
    @State var name : String = ""
    @State var birthday : Date

    var body: some View {
        Text("Enter your name")
        TextField("name", text: $name)
        Text("and your birthday")
        VStack {
            DatePicker(selection: $birthday, in: Date.now..., displayedComponents: .date) {
                                Text("birthday")
                            }
                            .datePickerStyle(.compact)
        }
        Button {
            
        } label: {
            Text("Save")
        }

    }
}
