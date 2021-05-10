//
//  ContentView.swift
//  Shared
//
//  Created by Scott Sanders on 4/27/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @ObservedObject var store: SandwichStore
    //var sandwiches: [Sandwich] = []
    //@StateObject private var store = SandwichStore()
    
    var body: some View {
        NavigationView{
            List {
                
                ForEach(store.sandwiches){ sandwich in
            SandwichCell(sandwich: sandwich)
            }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
        
        }
        .navigationTitle("Sandwiches")
        .toolbar {
                #if os(iOS)
                EditButton()
                #endif
                Button("Add", action: makeSandwich)
            }
            Text("Select a Sandwich")
                .font(.largeTitle)
        }
    }
    func makeSandwich() {
            withAnimation {
                store.sandwiches.append(Sandwich(name: "Patty melt",
                    ingredientCount: 3 ))
            }
        }
        
        func moveSandwiches(from: IndexSet, to: Int) {
            withAnimation {
                store.sandwiches.move(fromOffsets: from, toOffset: to)
            }
        }

        func deleteSandwiches(offsets: IndexSet) {
            withAnimation {
                store.sandwiches.remove(atOffsets: offsets)
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)){
            Image(sandwich.thumbnailName)
                .frame(width: 50.0, height: 50.0)
                .cornerRadius(8)
                //.aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}
