//
//  SwiftUIView.swift
//  GoodPlanner
//
//  Created by 이재원 on 3/18/24.
//

import SwiftUI

struct Header: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var date = Date()
    
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Text(date, style: .date)
                Spacer()
            }
            
        }
        .padding()
        .background(colorScheme == .dark ? Color.gray : Color.blue)
            
        
    }
}

#Preview {
    Header()
}
