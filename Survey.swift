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
                Color.black
                    .ignoresSafeArea()
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .top)
                    Text("Sleep Survey")
                        .foregroundColor(.white)
                        .font(.system(size: 45))
                }
                
                Group {
                    Text("Is there light in your room when you are trying to sleep?")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .frame(width: 60, height: 30)
                            .background(overText1 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText1.toggle()
                                
                            }
                        Text("NO")
                            .frame(width: 50, height: 30)
                            .background(overText2 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText2.toggle()
                                
                            }
                    }
                }
                
                
                Group {
                    Text("Is your room quiet when you are tryig to sleep?")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .frame(width: 60, height: 30)
                            .background(overText3 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText3.toggle()
                            }
                        Text("NO")
                            .frame(width: 50, height: 30)
                            .background(overText4 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText4.toggle()
                                        
                                    }
                    }
                }
               
                
                Group {
                    Text("Do you use your phone right before you are trying to sleep?")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        
                        Text("YES")
                            .font(.system(size: 30))
                            .frame(width: 60, height: 30)
                            .background(overText5 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText5.toggle()
                                
                            }
                        Text("NO")
                            .font(.system(size: 30))
                            .frame(width: 50, height: 30)
                            .background(overText6 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText6.toggle()
                            }
                    }
                }
              
                
                Group {
                    Text("is your room between 60 to 67 degreed Farengeight when you are trying to sleep?")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        
                        Text("YES")
                            .font(.system(size: 30))
                            .frame(width: 60, height: 30)
                            .background(overText7 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText7.toggle()}
                        Text("NO")
                            .font(.system(size: 30))
                            .frame(width: 50, height: 30)
                            .background(overText8 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText8.toggle()
                                
                            }
                    }
                }
              
                
                Group {
                    Text("Do you exerscise less than an hour before going to sleep?")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .font(.system(size: 30))
                            .frame(width: 60, height: 30)
                            .background(overText9 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText9.toggle()
                                    
                            }
                        Text("NO")
                            .font(.system(size: 30))
                            .frame(width: 50, height: 30)
                            .background(overText10 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText10.toggle()
                            }
                    }
                }
           
                
                Group {
                    Text("Do you take neps 20 minutes or less?")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 100)
                        .foregroundColor(.white)
                    HStack{
                        Text("YES")
                            .font(.system(size: 30))
                            .frame(width: 60, height: 30)
                            .background(overText11 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText11.toggle()
                            }
                        Text("NO")
                            .font(.system(size: 30))
                            .frame(width: 50, height: 30)
                            .background(overText12 ?.blue:.black)
                            .foregroundColor(.white)
                            .onTapGesture {
                                overText12.toggle()
                                    
                            }
                    }
                }
                NavigationLink(destination: SleepTips()){
                                            Text("Get Sleep Tips")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .frame(width: 500, height: 100)
                       
                                        }
                                        .foregroundColor(.yellow)
                                        
                                    }
                                }
                            }
                        }
                    
