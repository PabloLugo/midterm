//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Pablo Lugo on 23/03/20.
//  Copyright © 2020 Pablo Lugo. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
   // @State var i = 0
   // @State var show = false
   // var tempOK = 98.6
    
    var body: some View {
     
    Text("Hello, midterm")
    //(1) In SwiftUI, write the code that would show the view to the right when running.
        
   /*
        Text("I am in IOS development!")
            .multilineTextAlignment(.center)
            
            .padding().frame(width:140, height: 140)
            .background(Color.red) .padding().frame(width:200, height: 200) .background(Color.blue) .padding()
            .padding().frame(width:300, height: 300) .background(Color.green)
    */
        
        
    //(2) In SwiftUI, write the code that would show the view to the right when running (“Live long and prosper” is written in the center)
    /*
        Text("Live long and prosperous").multilineTextAlignment(.center).frame(width: 250, height: 250).background(Color.red)
    */
    
    //(3) In SwiftUI, write the code to show a form with “Hello, world” shown twice, and with with a Navigation bar with the text “SwiftUI” shown in its title.
    
    /*
        NavigationView{
            Form{
                ForEach (0..<2) {_ in
                Text("Hello world")
                }
            }.navigationBarTitle(Text("SwiftUI"))
        }
    */
    
    //(4) Write the SwiftUI code to have a button that shows its tapCount when tapped on.
      
    /*
        Button(action: {self.i += 1}){
            Text("tapCount: \(self.i)")
        }
     */
   //(5) Write the SwiftUI code to have a button that shows its tapCount when tapped on.
       /*
        Button("Tap me"){
        self.show = true
        self.i += 1
        }.alert(isPresented: $show){
                Alert(title: Text("TapCount"), message: Text("Count: \(i)"), dismissButton: .default(Text("Ok")))
            
        }
    */
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
