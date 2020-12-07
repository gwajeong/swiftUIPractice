//
//  ViewPractice.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/06.
//

import SwiftUI

struct ViewPractice: View {
    var body: some View {
        Text("Hello World")
            .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 0, maxHeight: .infinity)
            .background(Color.yellow)
            .edgesIgnoringSafeArea(.all)
        /*
        Group {
            if Bool.random() {
                Image("하늘")
            } else {
                Text("fail")
            }
        }
        */
    
    /*
     ZStack() {
     Image("하늘")
     Text("소영")
     .font(.largeTitle)
     }
     */
    
    /*
     VStack {
     Text("SwiftUI")
     .padding(50)
     Text("소영")
     }
     */
    
    
    /*
     VStack(alignment: .leading){
     Text("SwiftUI")
     Divider()
     Text("소영")
     }
     */
    
    /*
     VStack(spacing: 30) {
     Text("Hello")
     Text("소영")
     }
     */
}
}


struct ViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ViewPractice()
    }
}
