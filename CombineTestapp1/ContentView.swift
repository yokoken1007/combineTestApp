//
//  ContentView.swift
//  CombineTestapp1
//
//  Created by 横山賢一 on 2023/04/03.
//

import ComposableArchitecture
import SwiftUI

struct ContentView: View {
//    @State var labelText = "Hello World"
//    @State var flag = false
    
    var body: some View {
        
        FirstView()
        
//        VStack {
//            Text(labelText)
//                .font(.largeTitle)
//                .padding(.bottom)
//
//            Button(action: {
//                if(self.flag){
//                    self.labelText = "SwiftUI Test"
//                    self.flag = false
//                }
//                else{
//                    self.labelText = "tapped !"
//                    self.flag = true
//                }
//            }){
//                Text("Button")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            }
//            .padding(.all)
//            .background(Color.blue)
//
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
