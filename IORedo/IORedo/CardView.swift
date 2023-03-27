//
//  CardView.swift
//  IO
//
//  Created by Daniele Patrizio on 23/11/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            NavigationStack{
                
                
                ZStack{
                  
                    
                    Image("Card 2")
                    
                  
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 460, height: 210, alignment: .center)
                 
                }
                .navigationTitle("Il tuo wallet")

                //.frame(height: 200)
                
            }
            Spacer(minLength: 20)
            
        }
    }
        struct CardView_Previews: PreviewProvider {
            static var previews: some View {
                CardView()
            }
        }
    }

