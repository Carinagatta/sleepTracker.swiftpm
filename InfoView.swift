//
//  IntroView.swift
//  sleepTracker
//
//  Created by Sara Grabowski on 4/24/23.
//

import SwiftUI

struct InfoView: View {
    @State var name : String = UserDefaults.standard.string(forKey: "name") ?? ""
    @State var birthday : Date
    @State var age: Int
    let year = Calendar.current.component(.year, from: Date())


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
            UserDefaults.standard.set(name, forKey: "name")
          //  age = year - birthday(.year)
        } label: {
            Text("Save")
        }

    }
}
