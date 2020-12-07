//
//  TextFieldPractice.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/08.
//

import SwiftUI

struct TextFieldPractice: View {
    @State var name: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            // **** 으로 표시되어 나타난다
            SecureField("Enter a password", text: $password)
            Text("You entered: \(password)")
        }
        
        /*
        VStack {
            TextField("Enter your name", text: $name)
            Text("Hello, \(name)!")
        }
         */
    }

}

struct TextFieldPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPractice()
    }
}
