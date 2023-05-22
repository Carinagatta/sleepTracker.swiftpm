//
//  NapManager.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/16/23.
//

//import SwiftUI
//struct sleepManager {
//    func getitems() -> [logItems]{
//        if let object = UserDefaults.standard.value(forKey: "items") as? Data {
//            if let objectDecoded = try? JSONDecoder().decode(Array.self, from: object) as [logItems] {
//                return objectDecoded
//            }
//        } else {
//            print("Decoding Failed")
//        
//    }
//            return [logItems]()
//        }
//    func setitems(items: [logItems]) {
//            if let encoded = try? JSONEncoder().encode(items){
//                UserDefaults.standard.set(encoded, forKey: "items")
//            } else {
//                print("Encoding Failed")
//            }
//
//        }
//        }
