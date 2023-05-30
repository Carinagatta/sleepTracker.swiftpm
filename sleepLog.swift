//
//  sleepLog.swift
//  sleepTracker
//
//  Created by Carina Gatta on 4/26/23.
//

import SwiftUI

struct sleepLog: View {
    @State var items: [logItems] = sleepManager().getitems()
    @Binding var Shours:String
    @Binding var Sminutes:String
    @Binding var newItembedTime:String
    @Binding var newItemWakeupTime:String
    @Binding var newItemhoursSlept:String
    
    var body: some View {

            NavigationView(content: {
                
                
                
                
                List{
                   
                        Text("Sleep goal: \(Shours) hours and \(Sminutes) minutes")
                            .font(.system(size: 45))
                            .italic()
                            .foregroundColor(.white)
                            .listRowBackground(Color.blue)
                            

                        ForEach(items, id:\.self) { currentitem in
                            
                            logView(currentitem: currentitem)
                                .font(.title)
                            
                            //                            .listRowBackground(Color.black.opacity(0.9))
                            //                            .foregroundColor(.white)
                                .listRowBackground(Color.white)
                                .foregroundColor(.blue)
                                .listRowSeparatorTint(.white)
                        
                    }
                    
                    .onDelete(perform: { (indexSet) in
                        //                    removeItems(at: indexSet)
                        if let index = indexSet.first {
                            self.items.remove(at: index)
                        }
                        sleepManager().setitems(items: items)
                    })
                }
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .padding()
                
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        headerView(items: $items,newItembedTime: $newItembedTime,newItemWakeupTime: $newItemWakeupTime, newItemhoursSlept: $newItemhoursSlept)
                    }
                }
                .listStyle(.plain)
                .background(Color.black)
                .onAppear(perform: {
                    items = sleepManager().getitems()
                    
                
                    
                })
                
            })
            .navigationViewStyle(.stack)
            .background(Color.black)

        
    }
    
    func removeItems(at offests: IndexSet){
        items.remove(atOffsets: offests)
    }
    
}



