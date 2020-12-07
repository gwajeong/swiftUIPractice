//
//  ScrollViewPractice.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/08.
//

// Form 과 ScrollView 알아보기 !!

import SwiftUI

// MARK: Form 기본
/*

struct ScrollViewPractice: View {
    @State var toggling = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(footer: Text("footer")){
                    Toggle(isOn: $toggling) {
                        Text("Toggly")
                    }
                }
                Section {
                    Button(action: {
                    }) {
                        Text("Save changes")
                    }.disabled(!toggling)
                }
            }.navigationBarTitle(Text("Settings"))
        }
    }
}
*/

// MARK: Form 숨기기

/*
struct ScrollViewPractice: View {
    @State var showingAdvancedOptions = false
    @State var toggling = false
    
    var body: some View {
            Form {
                Section {
                    Toggle(isOn: $showingAdvancedOptions) {
                        Text("Showing Advanced Options")
                    }
                    if showingAdvancedOptions {
                        Toggle(isOn :$toggling) {
                            Text("Toggly")
                        }
                    }
                }
            
        }
    }
}
 */

// MARK: 스크롤뷰

struct ScrollViewPractice: View {
    var body: some View {
        ScrollView() {
            Image("하늘")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/) // 이미지 사이즈 조절
            Text("소영")
        }
    }
}

struct ScrollViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPractice()
    }
}
