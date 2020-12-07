//
//  ListPractice.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/08.
//

import SwiftUI

// List = 목록
// SwiftUI List = > UIKit의 테이블뷰와 매우 비슷

// MARK: 기본 리스트
/*
 
 struct FamilyRow: View {
 
 var name: String
 var body: some View {
 Text("Family: \(name)")
 }
 }
 
 struct ListPractice: View {
 var body: some View {
 List {
 FamilyRow(name: "Soyoung")
 FamilyRow(name: "Junyong")
 }
 }
 }
 */

// MARK: 다이나믹 리스트

/*
 struct Family: Identifiable {
 var id = UUID()
 var name: String
 }
 
 struct FamilyRow: View {
 var family: Family
 var body: some View {
 Text("Family: \(family.name)")
 }
 }
 
 struct ListPractice: View {
 var body: some View {
 let first = Family(name: "Soyoung")
 let second = Family(name: "Junyong")
 
 let families = [first,second]
 return List(families) { family in
 FamilyRow(family: family)
 }
 }
 }
 
 */

// MARK: 리스트 아이템 삭제

/*
 struct ListPractice: View {
 @State var users = ["Soyoung", "Junyong"]
 
 var body: some View {
 List {
 ForEach(users, id: \.self) { user in
 Text(user)
 }
 .onDelete(perform: delete)
 }
 }
 func delete(at offsets: IndexSet) {
 if let first = offsets.first {
 users.remove(at: first)
 }
 }
 }
 */

// MARK: 리스트 편집


/*
 struct ListPractice: View {
 @State var users = ["Soyoung", "Junyong"]
 
 var body: some View {
 NavigationView {
 List {
 ForEach(users, id: \.self) { user in
 Text(user)
 }
 .onMove(perform: move)
 }
 .navigationBarItems(trailing: EditButton()) // 편집버튼
 }
 }
 
 func move(from source: IndexSet, to destination: Int) {
 let reversedSource = source.sorted()
 for index in reversedSource.reversed() {
 users.insert(users.remove(at: index), at: destination)
 }
 }
 }
 
 
 */

/*
// MARK: 리스트 섹션 추가

struct TaskRow: View {
    var body: some View {
        Text("Task item")
    }
}


struct ListPractice: View {
    var body: some View {
        List {
            Section(header: Text("Important")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
        }
    }
}
*/

// MARK: 리스트 그룹화

struct GroupedRow: View {
    var body: some View {
        Text("Grouped Row")
    }
}


struct ListPractice: View {
    var body: some View {
        List {
            Section(header: Text("Grouped")) {
                GroupedRow()
                GroupedRow()
                GroupedRow()
            }
        }.listStyle(GroupedListStyle())
    }
}



struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
