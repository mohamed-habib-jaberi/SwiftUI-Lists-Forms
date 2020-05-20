//
//  ContentView.swift
//  SwiftUI Lists & Forms
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedSnackIndex = 0
    
    let treats = Treat.demoTreats
    @State private var isOn = false
    @State var textValue = ""
    
    var body: some View {
        
        NavigationView{
            
            Form{
                Section{
                    Picker(selection: $selectedSnackIndex, label: Text("Snack Type")) {
                        ForEach(0..<treats.count){
                            Text(self.treats[$0].name).tag($0)
                        }
                    }
                }
                
                Section{
                    Toggle(isOn: $isOn) {
                        Text("Would you like extra Milk with the order")
                    }
                    if isOn {
                        Text("Milk will cost an extrat 0.99$")
                            .foregroundColor(.gray)
                            .font(Font.system(size: 12))
                    }
                }
                
                Section{
                    TextField("Special Request", text: $textValue)
                }
                
                Section{
                    Button(action: {
                        print("button clicked")
                    }) {
                        HStack {
                            Image(systemName: "paperplane")
                                .foregroundColor(.blue)
                            
                            Text("Place Order")
                        }
                    }
                }
                
            }
        .navigationBarTitle(Text("Order Kitty Snac"))

            
        }
        //First Exemple
        //        List{
        //            ForEach(0..<5){
        //                 Text("\($0)")
        //                .tag($0)
        //            }
        //        }
        
        
         //second Exemple
//        List{
//            Section(header: Text("Main Treats"), footer: Text("More coming soon")) {
//                ForEach(0..<5){
//                             Text("\($0)")
//                                 .tag($0)
//                         }
//            }
//
//        }
//    .listStyle(GroupedListStyle())
        
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
