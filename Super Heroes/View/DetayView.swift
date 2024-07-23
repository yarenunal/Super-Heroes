//
//  detayView.swift
//  kahramanlar.swift
//
//  Created by Yaren on 19.07.2024.
//

import SwiftUI

struct detayView: View {
    var secilenKahraman : SuperKahraman
    var body: some View {
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height*0.5)
                .edgesIgnoringSafeArea(.top)//yukarı kısmı kaplamasına yaradı
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                .frame (
                    height: UIScreen.main.bounds.height * 0.3 ,
                    alignment: .center)
                .offset(y:UIScreen.main.bounds.height * -0.25)//koordinat belirler aşağı yukarı
            
            
            VStack{
                HStack{
                    Text(secilenKahraman.isim)
                        .font(.largeTitle)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(secilenKahraman.gercekIsim)
                        .font(.title)
                        .foregroundColor(.orange)}
                HStack{
                    Text(secilenKahraman.sehir)
                        .bold()
                    Spacer()
                    Text(secilenKahraman.meslek)
                        .bold()  }}
            .padding()
            .offset(y: UIScreen.main.bounds.height * -0.13)
        }
    }
}

#Preview {
    detayView(secilenKahraman: ironman )
}
