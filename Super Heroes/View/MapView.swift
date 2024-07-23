//
//  mapView.swift
//  kahramanlar.swift
//
//  Created by Yaren on 18.07.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    
    
    
    //  @State var region = MKCoordinateRegion(center: superkaramanDizisi   //[0].koordinatLokasyonu , span: MKCoordinateSpan(latitudeDelta: 0.5 //, longitudeDelta: 0.5))
    //
    //
    
    //
    //
    //var body: some View {
    // var coordinateUIView(uiView: MKMapVCiew , context: Context)
    //
    //        Map(coordinateRegion: $region)
    //    }
    //}
    
    var coordinate: CLLocationCoordinate2D
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
         
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}
#Preview {
    MapView(coordinate: superKahramanlar[0].koordinatLokasyonu)
}
