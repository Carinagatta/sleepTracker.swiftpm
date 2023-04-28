import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack{
                
                
                NavigationLink(destination: sleepLog()){
                    Text("log sleep")
                    
                }
                NavigationLink(destination: SleepGoal()){
                    Text("sleep goal")
                }
                NavigationLink(destination: Survey()){
                    Text("Take Survey")
                }
                NavigationLink(destination: Nap()){
                    Text("nap tracker")
                }
            }
            
        }
    }
}
