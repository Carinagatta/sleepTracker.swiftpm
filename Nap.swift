//
//  Nap.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import SwiftUI

struct Nap: View {
    @State var items: [ANap] = []
    
    var body: some View {
        NavigationView{
            
            List(items, id: \.self) { currentitem in
                ListView(currentitem: currentitem)
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigation){
                    HeaderView(items: $items)
                }
            })
        }
    }
}
    
