//
//  Survey.swift
//  sleepTracker
//
//  Created by Claudia Sepko on 4/26/23.
//

import Foundation
import SwiftUI

struct Survey: View {
    @State private var overText1 = false
    @State private var overText2 = false
    @State private var overText3 = false
    @State private var overText4 = false
    @State private var overText5 = false
    @State private var overText6 = false
    @State private var overText7 = false
    @State private var overText8 = false
    @State private var overText9 = false
    @State private var overText10 = false
    @State private var overText11 = false
    @State private var overText12 = false
        
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.black)
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.indigo)
                        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .top)
                    Text("Sleep Survey")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                
                Group {
                    Text("Is there light in your room when you are trying to sleep?")
                        .frame(width: 500, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .foregroundColor(overText1 ?.yellow:.white)
                            .onTapGesture {
                                overText1.toggle()
                                
                            }
                        Text("NO")
                            .foregroundColor(overText2 ?.yellow:.white)
                            .onTapGesture {
                                overText2.toggle()
                                
                            }
                    }
                }
                
                
                Group {
                    Text("Is your room quiet when you are tryig to sleep?")
                        .frame(width: 500, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .foregroundColor(overText3 ?.yellow:.white)
                            .onTapGesture {
                                overText3.toggle()
                            }
                        Text("NO")
                                    .foregroundColor(overText4 ?.yellow:.white)
                                    .onTapGesture {
                                        overText4.toggle()
                                        
                                    }
                    }
                }
               
                
                Group {
                    Text("Do you use your phone right before you are trying to sleep?")
                        .frame(width: 500, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        
                        Text("YES")
                            .foregroundColor(overText5 ?.yellow:.white)
                            .onTapGesture {
                                overText5.toggle()
                                
                            }
                        Text("NO")
                            .foregroundColor(overText6 ?.yellow:.white)
                            .onTapGesture {
                                overText6.toggle()
                            }
                    }
                }
              
                
                Group {
                    Text("is your room between 60 to 67 degreed Farengeight when you are trying to sleep?")
                        .frame(width: 500, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        
                        Text("YES")
                            .foregroundColor(overText7 ?.yellow:.white)
                            .onTapGesture {
                                overText7.toggle()}
                        Text("NO")
                            .foregroundColor(overText8 ?.yellow:.white)
                            .onTapGesture {
                                overText8.toggle()
                                
                            }
                    }
                }
              
                
                Group {
                    Text("Do you exerscise less than an hour before going to sleep?")
                        .frame(width: 500, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .foregroundColor(overText9 ?.yellow:.white)
                            .onTapGesture {
                                overText9.toggle()
                                
                            }
                        Text("NO")
                            .foregroundColor(overText10 ?.yellow:.white)
                            .onTapGesture {
                                overText10.toggle()
                            }
                    }
                }
           
                
                Group {
                    Text("Do you take neps 20 minutes or less?")
                        .frame(width: 500, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .foregroundColor(overText11 ?.yellow:.white)
                            .onTapGesture {
                                overText11.toggle()
                            }
                        Text("NO")
                            .foregroundColor(overText12 ?.yellow:.white)
                            .onTapGesture {
                                overText12.toggle()
                                
                            }
                    }
                }
                NavigationLink(destination: SleepTips()){
                                            Text("Get Sleep Tips")
                        .font(.title2)
                        .foregroundColor(.indigo)
                        .frame(width: 500, height: 100)
                       
                                        }
                                        .foregroundColor(.yellow)
                                        
                                    }
                                }
                            }
                        }
                    
