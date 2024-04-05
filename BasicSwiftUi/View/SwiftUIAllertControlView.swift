//
//  SwiftUIAllertControll.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct SwiftUIAllertControlView: View {
    
    @State private var showAllert: Bool = false
    
    var body: some View {
        VStack {
            Button {
                showAllert = true
            } label: {
                Image(systemName: "trash")
                    .font(.title)
            }
            .padding()
            .foregroundStyle(.white)
            .background(.red)
            .clipShape(Circle())
            .alert(
                "Are you sure want to delete?",
                isPresented: $showAllert) {
                    Button(role: .destructive) {
                        
                    } label : {
                        Text("Delete")
                    }
                }
        }
    }
}

#Preview {
    SwiftUIAllertControlView()
}
