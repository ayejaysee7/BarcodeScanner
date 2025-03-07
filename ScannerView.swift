//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Andrew Chong on 3/7/25.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
    

    
}

#Preview {
    ScannerView()
}
