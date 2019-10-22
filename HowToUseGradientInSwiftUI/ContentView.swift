//
//  ContentView.swift
//  HowToUseGradientInSwiftUI
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: .init(colors: [.purple, .pink, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
        
            GeometryReader { reader in
                    
                Button(action: {
                    
                }) {
                    Text("Register")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                }.frame(width: reader.size.width / 2)
                    .background(LinearGradient(gradient: .init(colors: [.orange, .red]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(25)
                .shadow(radius: 25)
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

