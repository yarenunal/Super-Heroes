//
//  sprkahranmanlar.swift
//  kahramanlar.swift
//
//  Created by Yaren on 18.07.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    
    var id = UUID()
    
    var isim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    var gercekIsim: String
    var koordinatLokasyonu : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
        
    }
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperKahraman(isim:"Batman", gorselIsmi: "batman", sehir: "chicago", meslek: "iş adamı" , koordinat: Koordinat(latitude: 41.858172, longitude: -87.6466582), gercekIsim: "Bruce Wayne")
let superman = SuperKahraman(isim:"Superman", gorselIsmi: "superman", sehir: "gotham", meslek: "gazeteci2" , koordinat: Koordinat(latitude: 41.8609259, longitude: -87.6439759), gercekIsim: "Clark Kent")
let ironman = SuperKahraman(isim:"Ironman", gorselIsmi: "ironman", sehir: "los angelese", meslek: "bilim adamı" , koordinat: Koordinat(latitude: 34.0792113, longitude: -118.6693479), gercekIsim: "Tony Stark")



let superKahramanlar = [batman , superman , ironman]








