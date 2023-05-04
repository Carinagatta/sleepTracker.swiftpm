//
//  sleepManager.swift
//  sleepTracker
//
//  Created by Carina Gatta on 5/4/23.
//

import SwiftUI
struct sleepManager {
    func getitems() -> [logItems]{
        if let object = UserDefaults.standard.value(forKey: "logItem") as? Data {
            if let objectDecoded = try? JSONDecoder().decode(Array.self, from: object) as [logItems] {
                return objectDecoded
            }
        } else {
            print("Decoding Failed")
        
    }
            return [logItems]()
        }
    func setitems(logitem: [logItems]) {
            if let encoded = try? JSONEncoder().encode(logitem){
                UserDefaults.standard.set(encoded, forKey: "logItem")
            } else {
                print("Encoding Failed")
            }

        }
        }
    
