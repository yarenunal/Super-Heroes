//
//  ContentView.swift
//  kahramanlar.swift
//
//  Created by Yaren on 18.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(superKahramanlar){
                superKahraman in
                NavigationLink(destination: detayView(secilenKahraman: superKahraman),
                               label: {
                    SKListRowView(superKahraman: superKahraman)
                        .alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
                            return 0
                        })
                    
                    
                })
            }
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
