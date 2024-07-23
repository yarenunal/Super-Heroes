//
//  listeRowView.swift
//  kahramanlar.swift
//
//  Created by Yaren on 23.07.2024.
//

import SwiftUI

struct SKListRowView: View {
    var superKahraman: SuperKahraman
    var body: some View {
        HStack(alignment : .center){
            Image(superKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100 , height: 100 , alignment: .leading)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            Spacer()
            VStack(alignment: .center){
                Text(superKahraman.isim)
                    .font(.title2)
                    .bold()
                Text(superKahraman.gercekIsim)
                    .font(.title3)
                    .bold()
                    .italic()

            }
        }
    }
}


#Preview {
    SKListRowView(superKahraman: SuperKahraman(
        isim: "Superman",
        gorselIsmi: "superman",
        sehir: "Metropolis",
        meslek: "Reporter",
        koordinat: Koordinat(latitude: 40.7128, longitude: -74.0060),
        gercekIsim: "Clark Kent"
    ))
}

