//
//  ContentView.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State var showAlert = false
    
    var body: some View {
        TabView {
        NavigationView {
                VStack {
                    Spacer()
                    
                    switch modelData.petsList.count {
                    case 0:
                        Text("🥲 You haven't any pet...")
                    case 1:
                        Text("You have 1 pet.")
                    default:
                        Text("You have \(modelData.petsList.count) pets.")
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink("Add Pet", destination: PetsListView())
                }
            }
            
            ForEach(modelData.petsList) { pet in
                Text(pet.emoji)
                    .font(.system(size: 120))
                    .onTapGesture {
                        showAlert = true
                    }
                    .alert(Text(pet.says), isPresented: $showAlert) { }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environmentObject(ModelData())
    }
}
