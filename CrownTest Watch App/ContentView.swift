//
//  ContentView.swift
//  CrownTest Watch App
//
//  Created by 久保彰悟 on 2023/12/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var crownRotation: Double = 0
    
    var body: some View {
        
        VStack {
            Text("Crown: \(crownRotation)")
            
            ScrollView {
                ForEach(0..<20) { index in
                    Text("Item\(index)")
                        .padding()
                }
            }
            
            ProgressView(value: crownRotation, total: 100.0)
                .progressViewStyle(CircularProgressViewStyle())  
        }
        .focusable(true)
        .digitalCrownRotation($crownRotation)
    }
}

#Preview {
    ContentView()
}
