//
//  ContentView.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var welcome = "str_welcome".localized()
        
        var body: some View {
            VStack{
                VStack{
                    Text(welcome)
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack(spacing:0){
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "en")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("English").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.red)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "ko")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("Korean").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.blue)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "zh-Hant")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("Chinese").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.green)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                }.frame(maxWidth: .infinity, maxHeight: 70)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
