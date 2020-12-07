//
//  ButtonPractice.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/06.
//

import SwiftUI

struct ButtonPractice: View {
    @State var showGreeting = true
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Welcome")
            }.padding()
            if showGreeting {
                Text("Hello!!!")
            }
        }
    }
    
    
    /* 기본 버튼
    @State var showDetails = false
    var body: some View {
        VStack {
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("Show details")
            }
            if showDetails {
                Text("You should see me in a crown")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
        }
    }
 */
}

struct ButtonPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPractice()
    }
}
