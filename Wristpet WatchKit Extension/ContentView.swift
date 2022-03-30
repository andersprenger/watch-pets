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
                    
                    Text("You have \(modelData.petsList.count) pets.")
                    
                    Spacer()
                    
                    NavigationLink("Add Pet", destination: PetsListView().environmentObject(self.modelData))
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
            .environmentObject(ModelData())
    }
}
