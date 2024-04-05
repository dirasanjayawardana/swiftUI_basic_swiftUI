//
//  FormControll.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct FormControlView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        Form {
            Section {
                TextField("First Name", text: $firstName)
                TextField("First Name", text: $lastName)
            } header: {
                Text("Account info".uppercased())
            } footer: {
                Text("Please fill the text field")
            }
        }
    }
}

#Preview {
    FormControlView()
}
