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
                Section("")
                {
                    ForEach(items, id: \.self) { currentitem in
                        ListView(currentitem: currentitem)
                            .listRowBackground(Color.blue)
                            .listRowSeparatorTint(.black)
                    }
                    }
                .font(.system(size: 30))
                .foregroundColor(Color.white)
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigation){
                    HeaderView(items: $items)
                }
            })
            .listStyle(.plain)
            .background(Color.black)
          
        }
        
        .navigationViewStyle(.stack)
        .background(.black)

    }
}
    
