import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            
            NavigationLink("log sleep", destination: sleepLog())
            NavigationLink("sleep goal", destination: SleepGoal())
            NavigationLink("Take Survey", destination: Survey())
            NavigationLink("sleep goal", destination: Nap())
            
        }
    }
}
