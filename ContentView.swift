import SwiftUI

struct ContentView: View {
    @State var Shours: String = UserDefaults.standard.string(forKey: "numberOfHours") ?? ""
    @State var Sminutes: String = UserDefaults.standard.string(forKey: "numberOfMinutes") ?? ""
   
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                Image(systemName: "bed.double")
                    .resizable()
                    .frame(width: 150, height: 90)
                    .foregroundColor(.blue)
                HStack {
                    NavigationLink(destination: sleepLog(Shours: $Shours, Sminutes: $Sminutes)){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.blue)
                                .frame(width: 150, height: 100)
                            Text("Log sleep")
                                .foregroundColor(.white)
                        }
                    }
                    NavigationLink(destination: SleepGoal(Shours: $Shours, Sminutes: $Sminutes)){
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
                NavigationLink(destination: InfoView()){
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}
