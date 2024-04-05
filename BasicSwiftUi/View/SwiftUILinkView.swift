//
//  SwiftUILink.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

// membuka link website
struct SwiftUILinkView: View {
    
    @State private var showWebView = false
    
    var body: some View {
        VStack {
            // cara pertama (membuka link di browser)
            let url = URL(string: "https://www.dirapp.cloud/")
            
            Link("Personal Website", destination: url!) // ! untuk memastikan bahwa url valid
            
            // jika di styling buttonnya
            Link(destination: url!, label: {
                HStack {
                    Image(systemName: "applelogo")
                    Text("Open DirApp Website")
                }
                .frame(width: 250, height: 70)
                .foregroundStyle(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            })
            
            // cara ketiga (membuka link langsung dalam aplikasi tanpa membuka browser)
            Button {
                showWebView = true
            } label: {
                Text("Show persnal website")
            }
            .fullScreenCover(isPresented: $showWebView, content: {
                WebView(url: url!)
            })
            
        }
    }
}

#Preview {
    SwiftUILinkView()
}
