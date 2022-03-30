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
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Image(systemName: "chevron.left"))")
                    .padding(.leading, 5)
                    .onTapGesture {
                        withAnimation {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
                
                Text("Choose your pets!")
                    .fontWeight(.semibold)
                    .padding()
                
                Spacer()
            }
            
            List (modelData.pets) { pet in
                HStack {
                    Text("\(pet.emoji) \(pet.name)")
                    Spacer()
                }
                .background(.blue)
                .listRowBackground(Color.blue.cornerRadius(13.5))
                .onTapGesture {
                    modelData.petsList.append(pet)
                }
            }
        }
    }
}

struct PetsListView_Previews: PreviewProvider {
    static var previews: some View {
        PetsListView()
            .environmentObject(ModelData())
    }
}
