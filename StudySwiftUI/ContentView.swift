//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by 한승진 on 2022/05/06.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                Text("Hello, world!")
                    .font(.title)
                Text("SwiftUI Study you want it?")
                    .font(.subheadline)
                Divider()
                
                NavigationLink {
                    HanSJinView()
                } label: {
                    Text("HanSJin")
                        .font(.headline)
                }
                
                Divider()
                
                NavigationLink {
                    AidosView()
                } label: {
                    Text("Aidos")
                        .font(.headline)
                }
            }
            .navigationTitle("il Ha Gi Sil Ta")
        }
    }
}

struct CircleImage: View {
    var body: some View {
        Image("b1d9I2")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
