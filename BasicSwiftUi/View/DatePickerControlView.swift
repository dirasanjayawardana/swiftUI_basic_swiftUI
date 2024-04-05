//
//  DatePickerControll.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct DatePickerControlView: View {
    
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker(
                "Choose a date",
                selection: $date,
                displayedComponents: [.date, .hourAndMinute]
            )
                .datePickerStyle(.compact)
            
        }.padding(20)
    }
}

#Preview {
    DatePickerControlView()
}
