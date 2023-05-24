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
            
            List{
                
                ForEach(items, id: \.self) { currentitem in
                    ListView(currentitem: currentitem)
                }
            }
           // .background(Color.black)
            .toolbar(content: {
                ToolbarItem(placement: .navigation){
                    HeaderView(items: $items)
                }
            })
        }
        .navigationViewStyle(.stack)
    }
}
    
