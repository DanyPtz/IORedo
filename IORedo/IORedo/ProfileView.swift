//
//  ProfileView.swift
//  IO
//
//  Created by Daniele Patrizio on 22/11/22.
//

import SwiftUI
import UIKit
struct ProfileView: View {
    @State var showModal: Bool = false
    var body: some View {
        
        VStack{
            NavigationStack{
                
                   Form{
                    ZStack{
                        Color(.systemGray6)
                            .frame(width: 370)
                            .padding(-40)
                        Button(action: {
                            self.showModal.toggle()
                            
                        }){
                            Image("Group 3")
                            
                            //.frame(maxWidth: 340, maxHeight: 115)
                            //.foregroundColor(.black)
                            //.font(.headline)
                            //.padding(.vertical, 40)
                            //.background(Color.systemGray5)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 460, height: 220, alignment: .center)
                                .padding(-10)
                        }
                    }.sheet(isPresented: $showModal) {
                        CardView().tag(0)
                            .presentationDetents([.medium, .large])
                    }
                    
                    Section{
                        
                        VStack(alignment: .leading){
                            List{
                                
                                Label("I tuoi dati", systemImage: "person")
                                    .padding()
                                Label("Preferenze", systemImage: "gear.circle")
                                    .padding()
                                Label("Sicurezza", systemImage: "shield")
                                    .padding()
                                Label("Privacy e Condizioni D'uso", systemImage: "lock")
                                    .padding()
                                Label("Informazioni su IO", systemImage: "info")
                                    .padding()
                                Label("Logout", systemImage: "figure.walk")
                                    .padding()
                                
                            }
                            .navigationTitle("Profilo")
                            
                            Spacer(minLength: -34)
                        }
                        
                        
                        
                        
                        
                        .navigationBarItems(trailing:
                                                HStack{
                            
                            Button(action: {
                                print("")
                            }){
                                Image(systemName: "questionmark.circle").imageScale(.large)
                            }
                            
                        })
                        
                        
                    }
                    
                }
                
                
            } }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
