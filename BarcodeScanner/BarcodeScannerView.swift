//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Andrew Chong on 3/7/25.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScannerView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder").font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
            }
            .navigationTitle(Text("Barcode Scanner"))
        }
    }
}

#Preview {
    BarcodeScannerView().preferredColorScheme(.dark)
}
