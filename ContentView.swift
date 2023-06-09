import SwiftUI

struct ContentView: View {
    @AppStorage("NumberOfHours") var Shours: String = ""
    @AppStorage("NumberOfMinutes") var Sminutes: String = ""
    @State var age: Int = UserDefaults.standard.integer(forKey: "age")
    @State var newItembedTime: String = ""
    @State var newItemWakeupTime: String = ""
    @State var newItemhoursSlept: String = ""
    @State var hoursNeeded: String = ""
//    @State var NewItemQuantity: String = ""
//    @State  var items: [ANap] = NapManager().getitem()

    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                Image(systemName: "bed.double")
                    .resizable()
                    .frame(width: 150, height: 90)
                    .foregroundColor(.blue)
                HStack {
                    NavigationLink(destination: sleepLog(Shours: $Shours, Sminutes: $Sminutes,newItembedTime: $newItembedTime, newItemWakeupTime: $newItemWakeupTime, newItemhoursSlept: $newItemhoursSlept)){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.blue)
                                .frame(width: 150, height: 100)
                            Text("Log sleep")
                                .foregroundColor(.white)
                        }
                    }
                    NavigationLink(destination: SleepGoal(Shours: $Shours, Sminutes: $Sminutes, age: $age, hoursNeeded: hoursNeeded)){
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .scaleEffect(1.5)
        }
        .navigationViewStyle(.stack)
       
        

      
    }
}
