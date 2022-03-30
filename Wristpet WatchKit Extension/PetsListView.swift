//
//  PetsListView.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import SwiftUI

struct PetsListView: View {
    @EnvironmentObject var modelData: ModelData
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var showAlert: Bool = false
    
    @State var updater: Bool = false
    
    var body: some View {
        VStack {
            List {
                ForEach (Array(zip(modelData.pets.indices, modelData.pets)), id: \.0) { index, pet in
                    HStack {
                        Text("\(pet.emoji) \(pet.name)")
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        modelData.petsList.append(pet)
                        updater.toggle()
                    }
                }
                .navigationTitle("Choose your pet")
            }
        }
        .alert("Pet added.", isPresented: $showAlert) {
            Text("😄")
        }
        .onChange(of: updater) { _ in
            print("update")
            DispatchQueue.main.async {
                showAlert = true
            }
        }
    }
}

struct PetsListView_Previews: PreviewProvider {
    static var previews: some View {
        PetsListView()
        //            .environmentObject(ModelData())
    }
}
