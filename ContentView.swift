import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            
            NavigationLink("Log Sleep"){
                sleepLog()
            }
            NavigationLink("sleep Goal"){
                SleepGoal()
            }
            NavigationLink("Take Survey"){
                Survey()
            }
            NavigationLink("Nap Tracker"){
                Nap()
            }
        }
    }
}
