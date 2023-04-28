import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                HStack {
                    NavigationLink(destination: sleepLog()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.blue)
                                .frame(width: 150, height: 100)
                            Text("Log sleep")
                                .foregroundColor(.white)
                        }
                    }
                    NavigationLink(destination: SleepGoal()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.blue)
                                .frame(width: 150, height: 100)
                            Text("Sleep goal")
                                .foregroundColor(.white)
                        }
                    }
                }
                HStack {
                    NavigationLink(destination: Survey()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.blue)
                                .frame(width: 150, height: 100)
                            Text("Take Survey")
                                .foregroundColor(.white)
                        }
                    }
                    NavigationLink(destination: Nap()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.blue)
                                .frame(width: 150, height: 100)
                            Text("Nap Tracker")
                                .foregroundColor(.white)
                        }
                    }
                }
            }
        }
    }
}
