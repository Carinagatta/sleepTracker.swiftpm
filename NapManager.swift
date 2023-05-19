//
//  NapManager.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 5/16/23.
//

import Foundation
import SwiftUI
struct NapManager {
    func getitem() -> [ANap]{
        if let object = UserDefaults.standard.value(forKey: "items") as? Data {
            if let objectDecoded = try? JSONDecoder().decode(Array.self, from: object) as [ANap] {
                return objectDecoded
            }
        } else {
            print("Decoding Failed")
        
    }
            return [ANap]()
        }
    func setitem(items: [ANap]) {
            if let encoded = try? JSONEncoder().encode(items){
                UserDefaults.standard.set(encoded, forKey: "items")
            } else {
                print("Encoding Failed")
            }

        }
        }
