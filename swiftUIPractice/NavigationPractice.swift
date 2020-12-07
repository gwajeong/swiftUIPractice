//
//  NavigationPractice.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/06.
//

import SwiftUI

struct NavigationPractice: View {
    var body: some View {
        Text("Happy")
    }
}
struct InView : View {
    var body: some View {
        NavigationView {
            Text("Hi")
                .navigationBarTitle(Text("Intro"))
                .navigationBarItems(trailing:
                                        NavigationLink(
                                            destination: NavigationPractice()) {
                                            Image(systemName:
                                                    "arrowtriangle.right.circle.fill").resizable()
                                                .frame(width: 25, height: 25, alignment: .trailing)
                                        }
                )
        }
    }
}


struct NavigationPractice_Previews: PreviewProvider {
    static var previews: some View {
        InView()
    }
}
