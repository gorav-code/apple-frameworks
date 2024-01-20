//
//  AFButton.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 18/01/24.
//

import SwiftUI

struct AFButton: View {
    let title: String
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(.red)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
