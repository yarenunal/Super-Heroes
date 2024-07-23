//
//  ozelGorselView.swift
//  kahramanlar.swift
//
//  Created by Yaren on 19.07.2024.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(.circle)
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius:12)
        
    }
}

#Preview {
    OzelGorselView(image: Image("batman"))
}
