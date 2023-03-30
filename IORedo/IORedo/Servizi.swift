//
//  Servizi.swift
//  IO
//
//  Created by Daniele Patrizio on 20/11/22.
//

import SwiftUI

struct Servizi: View {
    @State var segmentedChoise = 0
    
    var body: some View {
        NavigationStack{
            
            
            Form{
                ZStack{
                    Color(.systemGray6)
                        .frame(width: 360)
                        .padding(-40)
                    Picker("", selection: $segmentedChoise){
                        
                        Text("Nazionali").tag(0)
                        Text("Locali").tag(1)
                        
                        
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal, -15)
                }
                Section{
                    List{
                        DisclosureGroup()
                        {
                            
                            
                            Label("Ministero della Salute", systemImage: "staroflife")
                            Label("Ministero degli Affari Esteri e della Cooperazione Internazionale", systemImage: "globe.europe.africa")
                            Label("Ministero del Lavoro e delle Politiche Sociali", systemImage: "wrench.and.screwdriver.fill")
                            Label("Ministero dell'Istruzione", systemImage: "backpack")
                            Label("Ministero dell'Interno", systemImage: "shield")
                            Label("Ministero dell'Economia e delle Finanze", systemImage: "eurosign")
                            
                        }
                    label: {
                        Label("Servizi Ministeriali", systemImage: "person.text.rectangle")
                        
                            .padding()
                        
                    }
                        DisclosureGroup()
                        {
                            
                            
                        
                            Label("ACI", systemImage: "car.2")
                            Label("Cassa Forense", systemImage: "signature")
                            Label("ENPACL - Consulenza del Lavoro", systemImage: "person.crop.rectangle")
                            Label("ENPAL - Assistenza Medici ed Odontoiatri", systemImage: "cross.case")
                            Label("ENPAV - Previdenza ed Assistenza Veterinari", systemImage: "pawprint")
                            Label("Fondazione Onaosi", systemImage: "face.smiling")
                        }
                    label: {
                        Label("Enti", systemImage: "person.2")
                            .padding()

                    }
                        DisclosureGroup()
                        {
                            
                            
                            Label("Agenzia delle Entrate", systemImage: "banknote")
                            Label("Agenzia Industrie Difesa", systemImage: "shield.lefthalf.filled")
                        }
                    label: {
                        Label("Agenzie", systemImage: "building")
                            .padding()

                    }
                        DisclosureGroup()
                        {
                            
                            
                            Label("Inail", systemImage: "bandage")
                            Label("INPS", systemImage: "eurosign.circle")
                            Label("ISTAT", systemImage: "percent")
                        }
                        
                    label: {
                        Label("Istituzioni Nazionali", systemImage: "flag")
                            .padding()

                    }
                        DisclosureGroup()
                        {
                            
                            
                            Label("Carta Giovani Nazionale", systemImage: "person.crop.square.filled.and.at.rectangle")
                            Label("CGN - Novità e aggiornamenti", systemImage: "newspaper")
                      
                        }
                    label: {
                        Label("Dipartimento Politiche Giovanili", systemImage: "graduationcap")
                            .padding()

                    }
                       
                    }
                    
                    
                }
                

            }.navigationTitle("Servizi")
                .navigationBarTitleDisplayMode(.inline)
            
                .navigationBarItems(trailing:
                                        HStack{
                    
                    Button(action: {
                        print("")
                    }){
                        Text("")
                        Image(systemName: "gear").imageScale(.large)
                    }
                    
                })
                .navigationBarItems(leading:
                                        HStack{
                    
                    Button(action: {
                        print("")
                    }){
                        Image(systemName: "questionmark.circle").imageScale(.large)
                    }
                    
                })
                        
            
       //.scrollContentBackground(.hidden)
            
        }
        
    }
}

struct Servizi_Previews: PreviewProvider {
    static var previews: some View {
        Servizi()
    }
}
