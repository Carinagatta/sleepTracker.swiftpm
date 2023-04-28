//
//  IntroView.swift
//  sleepTracker
//
//  Created by Sara Grabowski on 4/24/23.
//

import SwiftUI

struct InfoView: View {
    @State var name : String = UserDefaults.standard.string(forKey: "name") ?? ""
    @State var age: Int = UserDefaults.standard.integer(forKey: "age")
    let year = Calendar.current.component(.year, from: Date())


    var body: some View {
        Text("Enter your name")
        TextField("name", text: $name)
            .textFieldStyle(.roundedBorder)
            .frame(width: 200, height: 10)
        Text("and your age")
        TextField("age", value: $age, format: .number)
            .textFieldStyle(.roundedBorder)
            .frame(width: 200, height: 10)
        Spacer()
        Button {
            UserDefaults.standard.set(name, forKey: "name")
            UserDefaults.standard.set(age, forKey: "age")
        } label: {
            Text("Save")
        }

    }
}
